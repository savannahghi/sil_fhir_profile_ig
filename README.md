# SGHI FHIR🔥 Profile Implementation Guide

**SGHI FHIR Profile Implementation Guide** repository. This project is part of the **Lifesciences team** and aims to provide a robust framework for implementing FHIR profiles tailored to support healthcare data interoperability, specifically aligned with the needs of Savannah Informatics.

## Overview

The **SGHI FHIR Profile Implementation Guide** provides a comprehensive set of tools, resources, and documentation to aid developers, implementers, and healthcare organizations in adopting and utilizing FHIR standards. It includes customized FHIR profiles, value sets, and implementation details to streamline healthcare data exchange and improve interoperability.

## Key Features

- **Custom FHIR Profiles**: Tailored to SGHI use cases and requirements.
- **Implementation Guidance**: Detailed instructions for adoption.
- **Validation Tools**: Resources to validate compliance with SGHI FHIR profiles.
- **Example Resources**: Sample FHIR resources for quick reference and testing.

## Table of Contents

- [SGHI FHIR🔥 Profile Implementation Guide](#sghi-fhir-profile-implementation-guide)
  - [Overview](#overview)
  - [Key Features](#key-features)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
  - [Project Structure](#project-structure)
  - [Installation](#installation)
    - [Steps](#steps)
  - [Usage](#usage)
    - [Compiling FHIR Profiles](#compiling-fhir-profiles)
  - [Using the makefile](#using-the-makefile)
      - [Local build](#local-build)
      - [Generate FHIR IG locally](#generate-fhir-ig-locally)
      - [Publish to local HAPI FHIR](#publish-to-local-hapi-fhir)
  - [Contributing](#contributing)
  - [License](#license)
  - [Maintainers](#maintainers)
  - [Contact Information](#contact-information)
  - [](#)

## Getting Started

To get started with the SGHI FHIR Profile Implementation Guide:

1. Clone the repository:
   ```bash
   git@github.com:savannahghi/sil_fhir_profile_ig.git
   ```
2. Navigate to the project directory:
   ```bash
   cd sil_fhir_profile_ig
   ```
3. Follow the [Installation](#installation) instructions to set up the project.

## Project Structure

```
.
├── LICENSE
├── README.md
└── SGHIFHIRProfileIG
    ├── fsh-generated
    ├── _gencontinuous.bat
    ├── _gencontinuous.sh
    ├── _genonce.bat
    ├── _genonce.sh
    ├── ig.ini
    ├── input
    ├── input-cache
    ├── output
    ├── sushi-config.yaml
    ├── temp
    ├── template
    ├── _updatePublisher.bat
    └── _updatePublisher.sh
```

## Installation

This project requires the following dependencies:

- **SUSHI (FHIR Shorthand)**: For authoring and compiling FHIR profiles.
- **FHIR Validator CLI**
- **Node.js** (for validation tools)
- **Java 11 or later**

### Steps

1. Install Node.js from [https://nodejs.org/](https://nodejs.org/).
2. Install SUSHI globally by running:
   ```bash
   npm install -g fsh-sushi
   ```

## Usage

### Compiling FHIR Profiles

Use SUSHI to compile the FSH definitions into FHIR artifacts:
1. Download the latest version of the HL7 FHIR IG Publisher tool
```bash
./_updatePublisher.sh                  
```

2. Build the FHIR artifacts by running:
```bash
sushi .
```
3. Generate the FHIR IG(s)
```bash
./_genonce.sh                     
```

This will generate output in the following directory:
```bash
./fsh-generated
```
as well as the necessary FHIR artifacts in the `output` directory.

## Using the makefile
This project now provides a Makefile that simplifies common workflows.

#### Local build
Run the build with the local FHIR canonical URL without publishing:
```bash
make build
```
This command updates the canonical URL in sushi-config.yaml to point to your local HAPI FHIR instance (default: http://localhost:8080/fhir), then runs SUSHI to build the artifacts

#### Generate FHIR IG locally
Once the local build is complete, generate the FHIR Implementation Guide(s) by running:
```bash
make ig
```
This command first builds locally and then runs the `_genonce.sh` script to generate the IG(s).

#### Publish to local HAPI FHIR
```bash
make publish-local
```
This target updates the canonical URL to the local value and uploads only the conformance resources (e.g. StructureDefinition, ValueSet, CodeSystem) to your local server.

## Contributing

This project is invite only. Anyone wishes to contribute please see [Contact](#contact)

Please ensure all code adheres to the project's coding standards and includes necessary documentation.

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this project in accordance with the license terms.

## Maintainers
- Kimutai Kelvin
- Kathurima Kimathi
- Nairoua Salaton
- Kennedy Omondi
- Oscar Otieno
- Gichui Victor

## Contact Information
[Email Address] (life-sciences@savannahinformatics.com)

##
Thank you for contributing to the **SGHI FHIR Profile Implementation Guide**!
