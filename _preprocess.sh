#!/bin/bash

set -e 

HAPI_FHIR_BASE_URL=${HAPI_FHIR_BASE_URL:-"http://localhost:8080/fhir"}

find input/fsh/ -type f -name "*.fsh" -exec sed -i "s|{{HAPI_FHIR_BASE_URL}}|$HAPI_FHIR_BASE_URL|g" {} +

sed -i "s|{{HAPI_FHIR_BASE_URL}}|$HAPI_FHIR_BASE_URL|g" sushi-config.yaml