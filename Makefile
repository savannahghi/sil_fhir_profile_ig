# Makefile

# Commands
SUSHI_CMD = sushi
# --snapshot is not optional for anything that can end up on a FHIR server.
# SUSHI emits a differential-only StructureDefinition by default, and HAPI
# accepts one happily but cannot validate against it: every resource that names
# the profile in meta.profile then fails with "StructureDefinition <url> has no
# snapshot - validation is against the snapshot, so it must be provided".
SUSHI_FLAGS = --snapshot
LOCAL_CANONICAL = http://localhost:8080/fhir

.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make build            - Build with local canonical (no publishing)."
	@echo "  make publish-local    - Build and publish to Local HAPI FHIR instance."
	@echo "  make ig               - Build locally and generate the FHIR IG(s)."
	@echo "  make all              - Build, validate, and (optionally) publish (local only)."

.PHONY: build
build:
	@echo "Replacing default canonical with local canonical: $(LOCAL_CANONICAL)"
	sed -i.bak "s|https://fhir.slade360.co.ke/fhir|$(LOCAL_CANONICAL)|g" sushi-config.yaml
	$(SUSHI_CMD) $(SUSHI_FLAGS) .
	@echo "Local SUSHI build complete. Canonical set to $(LOCAL_CANONICAL)."
	sed -i.bak "s|$(LOCAL_CANONICAL)|https://fhir.slade360.co.ke/fhir|g" sushi-config.yaml
	rm -f sushi-config.yaml.bak

# tx.fhir.org delegates ICD-11 MMS (http://id.who.int/icd/release/11/mms) to a
# WHO-hosted server that does not accept code systems in the tx-resource
# parameter, so the publisher refuses it and the build dies before it validates
# anything. This IG binds to ICD-11 and there is no conformant alternative
# server, so the delegation is authorised explicitly. The trade-off is real:
# ICD-11 code validation comes from a server the publisher cannot fully trust.
# The flag lives here rather than in _genonce.sh because _updatePublisher.sh
# overwrites that script with the upstream copy on every run.
PUBLISHER_FLAGS = -authorise-non-conformant-tx-servers

# The publisher is pinned, not "latest". Release 2.3.5 (2026-10-06) cannot
# build this IG: it logs a snapshot error against hl7.fhir.r5.core's own
# example-composition profile, then dies with a NullPointerException in its
# FML parser on the first map it loads. 2.3.4 is the release this IG last
# built cleanly with: CI built main with it on 2026-10-06, and main at #323
# builds with it locally. CI reads PUBLISHER_VERSION from this line, so this
# is the one place to change it. To upgrade, bump the version here, run
# `make ig`, and read temp/qa before keeping it. _updatePublisher.sh is no
# longer called: it hardcodes the latest release and would reintroduce the
# breakage.
PUBLISHER_VERSION = 2.3.4
PUBLISHER_JAR = input-cache/publisher.jar
PUBLISHER_URL = https://github.com/HL7/fhir-ig-publisher/releases/download/$(PUBLISHER_VERSION)/publisher.jar

.PHONY: ig
ig:
	@echo "Generating FHIR Implementation Guide(s)..."
	@mkdir -p input-cache
	@if [ ! -f $(PUBLISHER_JAR) ] || [ "$$(cat input-cache/publisher.version 2>/dev/null)" != "$(PUBLISHER_VERSION)" ]; then \
	  echo "Fetching IG publisher $(PUBLISHER_VERSION)"; \
	  curl -fsSL -o $(PUBLISHER_JAR) $(PUBLISHER_URL); \
	  echo "$(PUBLISHER_VERSION)" > input-cache/publisher.version; \
	fi
	./_genonce.sh $(PUBLISHER_FLAGS)
	@echo "FHIR IG generation complete."

.PHONY: publish-local
publish-local:
	@echo "Replacing default canonical with local canonical: $(LOCAL_CANONICAL)"
	sed -i.bak "s|https://fhir.slade360.co.ke/fhir|$(LOCAL_CANONICAL)|g" sushi-config.yaml
	$(SUSHI_CMD) $(SUSHI_FLAGS) .
	@echo "Publishing to Local HAPI FHIR at $(LOCAL_CANONICAL)"
	@for file in fsh-generated/resources/*.json; do \
	  if [ -f "$$file" ]; then \
	    RESOURCE_TYPE=$$(jq -r '.resourceType' "$$file"); \
	    RESOURCE_ID=$$(jq -r '.id' "$$file"); \
	    if [ "$$RESOURCE_TYPE" = "StructureDefinition" ] || \
	       [ "$$RESOURCE_TYPE" = "ValueSet" ] || \
	       [ "$$RESOURCE_TYPE" = "CodeSystem" ]; then \
	      if [ "$$RESOURCE_TYPE" = "StructureDefinition" ] && \
	         [ "$$(jq -r '(.snapshot.element // []) | length' "$$file")" -lt 1 ]; then \
	        echo "Refusing to upload $$file: StructureDefinition has no snapshot."; \
	        echo "Rebuild with '$(SUSHI_CMD) $(SUSHI_FLAGS) .' before publishing."; \
	        exit 1; \
	      fi; \
	      echo "Uploading $$file (Type: $$RESOURCE_TYPE, ID: $$RESOURCE_ID)"; \
	      STATUS_CODE=$$(curl -s -o /dev/null -w "%{http_code}" \
	        -X PUT "$(LOCAL_CANONICAL)/$$RESOURCE_TYPE/$$RESOURCE_ID" \
	        -H "Content-Type: application/fhir+json" \
	        --data-binary "@$$file"); \
	      if [ "$$STATUS_CODE" -lt 200 ] || [ "$$STATUS_CODE" -ge 300 ]; then \
	        echo "Error uploading $$file to $(LOCAL_CANONICAL) (HTTP $$STATUS_CODE)"; \
	        exit 1; \
	      fi; \
	    else \
	      echo "Skipping $$file: $$RESOURCE_TYPE is not a conformance resource."; \
	    fi; \
	  fi; \
	done
	rm -f sushi-config.yaml.bak
	@echo "Local publish complete."

.PHONY: all
all: build ig publish-local
	@echo "Local build and validation complete. Not publishing to remote FHIR servers."
