#!/bin/bash

set -e 

HAPI_FHIR_BASE_URL=${HAPI_FHIR_BASE_URL:-"http://localhost:8080/fhir"}

TMP_DIR="temp_fsh"

mkdir -p "$TMP_DIR"
cp sushi-config.yaml "$TMP_DIR"

find input/fsh -type f -name "*.fsh" | while read -r fsh_file; do
  relative_path="${fsh_file=input/fsh/}"
  temp_file="$TMP_DIR/$relative_path"
  mkdir -p "$(dirname $temp_file)"
  sed "s|{{HAPI_FHIR_BASE_URL}}|$HAPI_FHIR_BASE_URL|g" "$fsh_file" > "$temp_file"
done

echo "Done processing fsh files!!!!"

echo "Running sushi....."
sed -i "s|{{HAPI_FHIR_BASE_URL}}|$HAPI_FHIR_BASE_URL|g" "$TMP_DIR/sushi-config.yaml"
sushi "$TMP_DIR" -s -o ./
echo "Sushi build completed"

rm -rf "$TMP_DIR"

