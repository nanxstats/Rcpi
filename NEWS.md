# Rcpi 1.37.1 (2023-06-27)

## Improvements

- Migrate rcdk to a runtime soft dependency using rlang, to avoid build time issues.
- Migrate unit tests from using RUnit to testthat.
- Use GitHub Actions workflows for `R CMD check` and building the pkgdown website.
- Fix URLs that are broken or moved in the documentation.

# Rcpi 1.33.2 (2022-07-17)

## Improvements

- Updated the endpoint URL of UniProt API to fix access issues ([#14](https://github.com/nanxstats/Rcpi/issues/14)).

# Rcpi 1.33.1 (2022-05-07)

## Improvements

- Remove the `Enhances` field in `DESCRIPTION` to improve clarity.

# Rcpi 1.33.0 (2022-04-25)

## Improvements

- Fixed a build error on macOS in the `devel` branch due to dependencies not available.

# Rcpi 1.21.1 (2019-05-17)

## Improvements

- Removed AppVeyor CI due to the frequent Bioconductor installation and dependency issues which are not related to the package itself.
- Updated GitHub repository links due to the recent handle change.
- Updated the vignette style.

# Rcpi 1.19.2 (2019-02-24)

## Bug Fixes

- Fixed the issues in `calcTwoProtGOSim()` and `calcParProtGOSim()` to use the latest GOSemSim API for computing GO based semantic similarity.

# Rcpi 1.19.1 (2018-11-21)

## Bug Fixes

- Fixed API endpoints that are not working due to their changes across time ([#5](https://github.com/nanxstats/Rcpi/issues/5)).
- Fixed the vignette example for QSRR study ([#6](https://github.com/nanxstats/Rcpi/issues/6)).

## Improvements

- Reformat vignette code with tidyverse style.

# Rcpi 1.17.2 (2018-07-15)

## Improvements

- Further remove all words related to the previous installation method per Bioconductor's request.

# Rcpi 1.17.1 (2018-07-13)

## Improvements

- Use the new `BiocManager` for installation instructions.

# Rcpi 1.15.1 (2017-11-17)

## Bug Fixes

- Resolved a critical bug due to improper `ifelse` conditioning for the distribution descriptor in CTD.

# Rcpi 1.13.4 (2017-06-21)

## Bug Fixes

- Fixed the ALOGP unit test to make it work under the recently updated CDK

## Improvements

- Added more unit tests for molecular descriptor calculation to improve code coverage

# Rcpi 1.13.3 (2017-06-09)

## Improvements

- Added Travis CI for continuous integration under Linux
- Added Appveyor for continuous integration under Windows

# Rcpi 1.13.2 (2017-06-07)

## Improvements

- Migrated from Sweave-based PDF vignette to knitr-based HTML vignette

# Rcpi 1.13.1 (2017-05-07)

## Improvements

- Better code formatting
- Minor fixes in function documentation and vignette

# Rcpi 1.11.2 (2016-11-18)

## Bug Fixes

- Fixed some `R CMD check` errors
- ChemmineOB related fixes
- Fixed all drug molecule downloading utilities

# Rcpi 1.11.1 (2016-11-12)

## Bug Fixes

- Fixed known problems in `extractProt` functions
- Fixed some build and dependency related problems
- Fixed some functions for downloading drug/chemical structures, such as `getMolFromPubChem()` and `getMolFromChEMBL()`.
- General code style and documentation improvements

# Rcpi 1.0.2 (2014-07-20)

## New Features

- Added the profile-based representation for proteins derived by PSSM

## Documentation

- Added a vignette which grouped similar functions into the same category. See vignette('Rcpi-quickref') . This makes the package structure clearer and enhances its usability.
- Other documentation improvements

# Rcpi 1.0.0 (2014-03-01)

## New Features

- Initial release
