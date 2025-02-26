#!/bin/bash
set -e

codesystems_folder=uploads/codesystems
profiles_folder=uploads/profiles
valuesets_folder=uploads/valuesets
HAPI_FHIR_BASE_URL=${HAPI_FHIR_BASE_URL:-"http://localhost:8080/fhir"}
hapi_fhir_server=$HAPI_FHIR_BASE_URL 

upload_sghi_ig_fhir_resources() {
  local folder=$1
  local endpoint=$2

  if [ -d "$folder" ] && find "$folder" -mindepth 1 -print -quit | grep -q .; then 
    for file in "$folder"/*.json; do
      [ -e "$file" ] || continue

      resource_id=$(jq -r '.id' "$file")

      if [ -z "$resource_id" ] || [ "$resource_id" == "null" ]; then
        echo "Warning: No ID found for $file. Skipping.."
        continue
      fi

      echo "Uploading $file to $hapi_fhir_server/$endpoint/$resource_id...."
      response=$(curl -s -o /dev/null -w "%{http_code}" -X PUT "$hapi_fhir_server/$endpoint/$resource_id" \
                  -H "Content-Type: application/fhir+json" --data-binary "@$file")
    if [ "$response" -ne 201 ] && [ "$response" -ne 200 ]; then
      echo "Error: Upload failed for $file (HTTP $response)"
    return 1
    else
      echo "Successfully uploaded $file"
    fi
    done
  else
  echo "No resources found in $folder. Skipping.."
  fi
}


echo "Fetching environments....."

find input/fsh/ -type f -name "*.fsh" -exec sed -i "s|{{HAPI_FHIR_BASE_URL}}|$HAPI_FHIR_BASE_URL|g" {} +

sed -i "s|{{HAPI_FHIR_BASE_URL}}|$HAPI_FHIR_BASE_URL|g" sushi-config.yaml

echo "Building FHIR resources...."
sushi -s

echo "Preparing SGHI FHIR IG resources for server uploads..."
./_resources.sh

echo "Uploading SGHI FHIR IG resources to HAPI FHIR server..."
upload_sghi_ig_fhir_resources "$codesystems_folder" "CodeSystem"
upload_sghi_ig_fhir_resources "$profiles_folder" "StructureDefinition"
upload_sghi_ig_fhir_resources "$valuesets_folder" "ValueSet"

echo "Cleaning up!!!!"
rm -rf fsh-generated/
rm -rf uploads/
echo "Cleanup complete"