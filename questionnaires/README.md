# Questionnaire staging inbox (fire and forget)

This folder is a **staging inbox**, not IG source. The FHIR server (SHR) is the
source of truth for Questionnaires; this repo only carries them in transit.

The contract:

1. Drop `Questionnaire-<id>.json` files here and merge to `main`.
2. CI PUTs each one to every environment's SHR (after the StructureMaps, since
   questionnaires reference their extraction maps via
   `sdc-questionnaire-targetStructureMap`).
3. Once **all** environments succeed, CI deletes the shipped `*.json` files and
   pushes the deletion back to `main` with `[skip ci]`.
4. An empty folder is a no-op: CI logs it and moves on.

Uploads use `PUT Questionnaire/<id>` (not POST) so a rerun of a partially
failed deploy overwrites rather than duplicates. To change a questionnaire that
already lives on the SHR, drop the amended file here again — same id, new
content — and merge.

These files are deliberately **not** part of the IG build: SUSHI and the IG
Publisher never see this folder, so the IG stays identical whether the inbox is
full or empty.
