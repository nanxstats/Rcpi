# Rcpi 1.19.1 (2018-11-21)

## Bug Fixes

- Fixed API endpoints that are not working due to their changes across time ([#5](https://github.com/road2stat/Rcpi/issues/5)).
- Fixed the vignette example for QSRR study ([#6](https://github.com/road2stat/Rcpi/issues/6)).

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
