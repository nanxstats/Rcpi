# Rcpi <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->
[![bioc](https://www.bioconductor.org/shields/years-in-bioc/Rcpi.svg)](https://bioconductor.org/packages/release/bioc/html/Rcpi.html#since)
[![downloads](https://bioconductor.org/shields/downloads/release/Rcpi.svg)](https://bioconductor.org/packages/stats/bioc/Rcpi/)
[![R-CMD-check](https://github.com/nanxstats/Rcpi/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nanxstats/Rcpi/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Overview

Rcpi offers a molecular informatics toolkit with a comprehensive integration of bioinformatics and cheminformatics tools for drug discovery. For more information, please see our paper <[DOI:10.1093/bioinformatics/btu624](https://doi.org/10.1093/bioinformatics/btu624)> ([PDF](https://nanx.me/papers/Rcpi.pdf)).

## Paper Citation

Formatted citation:

Dong-Sheng Cao, Nan Xiao, Qing-Song Xu, and Alex F. Chen. (2015). Rcpi: R/Bioconductor package to generate various descriptors of proteins, compounds and their interactions. _Bioinformatics_ 31 (2), 279-281.

BibTeX entry:

```bibtex
@article{Rcpi2015,
  author  = {Cao, Dong-Sheng and Xiao, Nan and Xu, Qing-Song and Chen, Alex F.},
  title   = {{Rcpi: R/Bioconductor package to generate various descriptors of proteins, compounds and their interactions}},
  journal = {Bioinformatics},
  year    = {2015},
  volume  = {31},
  number  = {2},
  pages   = {279--281},
  doi     = {10.1093/bioinformatics/btu624}
}
```

Browse the [workflow](https://nanx.me/Rcpi/articles/Rcpi.html) and
[cheatsheet](https://nanx.me/Rcpi/articles/Rcpi-quickref.html)
vignettes to get started.

## Installation

### Install Rcpi

Install the Rcpi package via BiocManager. If BiocManager is not already installed:

```r
install.packages("BiocManager")
```

Then install Rcpi:

```r
BiocManager::install("Rcpi")
```

### Manage dependencies

Some features in the Rcpi package rely on certain R packages which may
require specific system configurations to install from source.
To make the build process robust, these dependencies have been configured
as runtime dependencies. Here are some instructions for installing such
dependencies to enable the features in Rcpi.

#### Install rcdk

rcdk can be installed from either CRAN or GitHub:

```r
install.packages("rcdk", type = "source")
remotes::install_github("CDK-R/cdkr", subdir = "rcdk")
```

rcdk requires JDK and rJava to be installed and configured on your system.
Check out the [rJava readme](https://github.com/s-u/rJava) for installation
and troubleshooting instructions.

#### Install cheminformatics packages

Additional packages for cheminformatics capabilities are available
from Bioconductor:

```r
BiocManager::install(c("fmcsR", "ChemmineR", "ChemmineOB"))
```

ChemmineOB requires Open Babel to compile from source.
Ensure Open Babel is properly installed on your system.

## Features

Rcpi implemented and integrated the state-of-the-art protein sequence descriptors and molecular descriptors/fingerprints with R. For protein sequences, the Rcpi package could

- Calculate six protein descriptor groups composed of fourteen types of commonly used structural and physicochemical descriptors that include 9920 descriptors.

- Calculate six types of generalized scales-based descriptors derived by various dimensionality reduction methods for proteochemometric (PCM) modeling.

- Parallelized pairwise similarity computation derived by protein sequence alignment and Gene Ontology (GO) semantic similarity measures within a list of proteins.

For small molecules, the Rcpi package could

- Calculate 307 molecular descriptors (2D/3D), including constitutional, topological, geometrical, and electronic descriptors, etc.

- Calculate more than ten types of molecular fingerprints, including FP4 keys, E-state fingerprints, MACCS keys, etc., and parallelized chemical similarity search.

- Parallelized pairwise similarity computation derived by fingerprints and maximum common substructure search within a list of small molecules.

By combining various types of descriptors for drugs and proteins in different methods, interaction descriptors representing protein-protein or compound-protein interactions could be conveniently generated with Rcpi, including:

- Two types of compound-protein interaction (CPI) descriptors

- Three types of protein-protein interaction (PPI) descriptors

Several useful auxiliary utilities are also shipped with Rcpi:

- Parallelized molecule and protein sequence retrieval from several online databases, like PubChem, ChEMBL, KEGG, DrugBank, UniProt, RCSB PDB, etc.

- Loading molecules stored in SMILES/SDF files and loading protein sequences from FASTA/PDB files

- Molecular file format conversion

The computed protein sequence descriptors, molecular descriptors/fingerprints, interaction descriptors and pairwise similarities are widely used in various research fields relevant to drug discovery, primarily bioinformatics, cheminformatics, proteochemometrics, and chemogenomics.

## Contribute

To contribute to this project, please take a look at the [Contributing Guidelines](CONTRIBUTING.md) first. Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
