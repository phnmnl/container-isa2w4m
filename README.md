<!-- Guidance: see https://github.com/phnmnl/phenomenal-h2020/wiki/The-Guideline-for-Container-GitHub-Respository-README.md-Creation -->

![Logo](w4m.png)

# ISA to W4M converter
Version: 1.1.0

## Short description

<!-- 
This should only be 20 to 40 words, hopefully a single sentence.
-->

ISA to W4M converter

## Description

The module converts an ISA archive into a W4M 3 files format:

 - Sample metadata.
 - Variable metadata.
 - Sample x variable matrix.

## Key features

- ISA/W4M conversion.

## Functionality

- Data Management / Study Metadata Format Conversion

## Approaches

- Metabolomics / Targeted
- Metabolomics / Untargeted

## Instrument Data Types

- MS
- NMR

## Screenshots

## Tool Authors

- Pierrick Roger (CEA).

## Container Contributors

- Pierrick Roger (CEA).
- [Philippe Rocca-Serra](https://github.com) (University of Oxford)

## Website

- http://workflow4metabolomics.org

## Git Repository

- https://github.com/phnmnl/container-isa2w4m.git

## Installation 

For local individual installation:

```bash
docker pull container-registry.phenomenal-h2020.eu/phnmnl/isa2w4m
```

## Usage Instructions

For direct docker usage:
```bash
docker run container-registry.phenomenal-h2020.eu/phnmnl/isa2w4m -h
```

## Publications

<!-- Guidance:
Use AMA style publications as a list (you can export AMA from PubMed, on the Formats: Citation link when looking at the entry).
-->

 - Susanna-Assunta Sansone, Philippe Rocca-Serra, Dawn Field, Eamonn Maguire, Chris Taylor, Oliver Hofmann, Hong Fang, Steffen Neumann, Weida Tong, Linda Amaral-Zettler, Kimberly Begley, Tim Booth, Lydie Bougueleret, Gully Burns, Brad Chapman, Tim Clark, Lee-Ann Coleman, Jay Copeland, Sudeshna Das, Antoine de Daruvar, Paula de Matos, Ian Dix, Scott Edmunds, Chris T Evelo, Mark J Forster, Pascale Gaudet, Jack Gilbert, Carole Goble, Julian L Griffin, Daniel Jacob, Jos Kleinjans, Lee Harland, Kenneth Haug, Henning Hermjakob, Shannan J Ho Sui, Alain Laederach, Shaoguang Liang, Stephen Marshall, Annette McGrath, Emily Merrill, Dorothy Reilly, Magali Roux, Caroline E Shamu, Catherine A Shang, Christoph Steinbeck, Anne Trefethen, Bryn Williams-Jones, Katherine Wolstencroft, Ioannis Xenarios & Winston Hide: Toward interoperable bioscience data. Nature Genetics 44, 121–126 (2012).
 - Giacomoni F, Le corguillé G, Monsoor M, et al. Workflow4Metabolomics: a collaborative research infrastructure for computational metabolomics. Bioinformatics. 2015;31(9):1493-5.
