#!/usr/bin/env bash
################################################################################
# upload-conformance.sh
#
# Upload every JSON resource in $DIR to a Matchbox/HAPI-FHIR server.
#  • First try idempotent PUT  /{type}/{id}
#  • If the server replies 404 or 405, fall back to POST /{type}
#
# A coloured, timestamped log is written to both the console and a rotating
# log-file under ./logs/.
#
# Prerequisites: jq, curl
################################################################################

BASE="http://localhost:8080/matchboxv3/fhir"   # target FHIR endpoint
DIR="output"                                   # folder containing *.json
LOG_DIR="logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/upload_$(date +'%Y%m%d_%H%M%S').log"

# ── simple logger ─────────────────────────────────────────────────────────────
log()   { printf "[%s] %b\n" "$(date '+%F %T')" "$1" | tee -a "$LOG_FILE"; }
info()  { log "\033[1;34mℹ️  $1\033[0m"; }   # blue
ok()    { log "\033[1;32m✅ $1\033[0m"; }   # green
warn()  { log "\033[1;33m⚠️  $1\033[0m"; }   # yellow
err()   { log "\033[1;31m❌ $1\033[0m"; }   # red

[[ -d $DIR ]] || { err "Directory not found: $DIR"; exit 1; }

success=0 failure=0 skipped=0

info "Publishing resources from '$DIR' to '$BASE'"
info "Log file: $LOG_FILE"

for f in "$DIR"/*.json; do
  [[ -f $f ]] || continue

  TYPE=$(jq -r '.resourceType' "$f")
  ID=$(jq   -r '.id // empty'  "$f")

  # Compose endpoint & verb
  if [[ -n $ID ]]; then
    ENDPOINT="$BASE/$TYPE/$ID"
    info "PUT  $TYPE/$ID"
    STATUS=$(curl -s -o /dev/null -w '%{http_code}' -X PUT "$ENDPOINT" \
             -H 'Content-Type: application/fhir+json' --data-binary "@$f")

    if [[ $STATUS == 404 || $STATUS == 405 ]]; then
      warn "Server returned $STATUS – switching to POST"
      ENDPOINT="$BASE/$TYPE"
      STATUS=$(curl -s -o /dev/null -w '%{http_code}' -X POST "$ENDPOINT" \
               -H 'Content-Type: application/fhir+json' --data-binary "@$f")
    fi
  else
    ENDPOINT="$BASE/$TYPE"
    info "POST $TYPE (no id)"
    STATUS=$(curl -s -o /dev/null -w '%{http_code}' -X POST "$ENDPOINT" \
             -H 'Content-Type: application/fhir+json' --data-binary "@$f")
  fi

  if [[ $STATUS =~ ^20[01]$ ]]; then
    ok  "Uploaded $(basename "$f")  → HTTP $STATUS"
    ((success++))
  else
    err "Failed $(basename "$f")    → HTTP $STATUS"
    ((failure++))
  fi
done

info "Summary  ✔︎ $success   ✖︎ $failure"
[[ $failure -eq 0 ]] || exit 1
