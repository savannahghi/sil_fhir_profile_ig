# Makefile

# Commands
SUSHI_CMD = sushi
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
	$(SUSHI_CMD) .
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

.PHONY: ig
ig:
	@echo "Generating FHIR Implementation Guide(s)..."
	./_updatePublisher.sh
	./_genonce.sh $(PUBLISHER_FLAGS)
	@echo "FHIR IG generation complete."

.PHONY: publish-local
publish-local:
	@echo "Replacing default canonical with local canonical: $(LOCAL_CANONICAL)"
	sed -i.bak "s|https://fhir.slade360.co.ke/fhir|$(LOCAL_CANONICAL)|g" sushi-config.yaml
	$(SUSHI_CMD) .
	@echo "Publishing to Local HAPI FHIR at $(LOCAL_CANONICAL)"
	@for file in fsh-generated/resources/*.json; do \
	  if [ -f "$$file" ]; then \
	    RESOURCE_TYPE=$$(jq -r '.resourceType' "$$file"); \
	    RESOURCE_ID=$$(jq -r '.id' "$$file"); \
	    if [ "$$RESOURCE_TYPE" = "StructureDefinition" ] || \
	       [ "$$RESOURCE_TYPE" = "ValueSet" ] || \
	       [ "$$RESOURCE_TYPE" = "CodeSystem" ]; then \
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
