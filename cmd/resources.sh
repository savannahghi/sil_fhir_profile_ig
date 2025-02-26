#!/bin/bash

set -e

profiles_folder=uploads/profiles
valuesets_folder=uploads/valuesets
codesystems_folder=uploads/codesystems
resources_folder=fsh-generated/resources

mkdir -p $profiles_folder $valuesets_folder $codesystems_folder

if [ -d "$resources_folder" ] && [ "$(ls -A "$resources_folder")" ]; then
  echo "Ready to roll!!!"
else
  echo "Either the ($resource_folder) folder is empty or it doesn't exist!!!!"
fi

valueset_files=$(find "$resources_folder" -type f -name 'ValueSet*.json')
if [ -n "$valueset_files" ]; then
  echo "$valueset_files" | xargs -I {} mv {} "$valuesets_folder"

  echo "All ValueSet files successfully copied to the valuesets folder."
else
  echo "No ValueSets files found!!"
fi

profiles_files=$(find "$resources_folder" -type f -name 'StructureDefinition*.json')
if [ -n "$profiles_files" ]; then
  echo "$profiles_files" | xargs -I {} mv {} "$profiles_folder"
  echo "All StructureDefinition files successfully copied to the profiles folder."
else
  echo "No StructureDefinition files found!!"
fi

codesystems_files=$(find "$resources_folder" -type f -name 'CodeSystem*.json')
if [ -n "$codesystems_files" ]; then
  echo "$codesystems_files" | xargs -I {} mv {} "$codesystems_folder"
  echo "All CodeSystem files successfully copied to the codesystems folder."
else
  echo "No CodeSystem files found!!"
fi



