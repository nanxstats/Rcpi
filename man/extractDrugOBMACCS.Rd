\name{extractDrugOBMACCS}
\alias{extractDrugOBMACCS}
\title{Calculate the MACCS Molecular Fingerprints}
\usage{
extractDrugOBMACCS(molecules, type = c("smile", "sdf"))
}
\arguments{
  \item{molecules}{R character string object containing the
  molecules. See examples.}

  \item{type}{'smile' or 'sdf'}
}
\value{
A matrix. Each row represents one molecule, the columns
represent the fingerprints.
}
\description{
Calculate the MACCS Molecular Fingerprints
}
\details{
Calculate the 256 bit MACCS fingerprints provided by
OpenBabel.
}
\examples{
\dontrun{
mol1 = 'C1CCC1CC(CN(C)(C))CC(=O)CC'  # one molecule SMILE in a vector
mol2 = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1',
         'C1CCC1CC(CN(C)(C))CC(=O)CC')  # multiple SMILEs in a vector
mol3 = readChar(system.file('compseq/DB00860.sdf', package = 'Rcpi'),
                nchars = 1e+6)  # single molecule in single sdf file
mol4 = readChar(system.file('sysdata/OptAA3d.sdf', package = 'Rcpi'),
                nchars = 1e+6)  # multiple molecules in single sdf file

smifp0 = extractDrugOBMACCS(mol1, type = 'smile')
smifp1 = extractDrugOBMACCS(mol2, type = 'smile')
sdffp0 = extractDrugOBMACCS(mol3, type = 'sdf')
sdffp1 = extractDrugOBMACCS(mol4, type = 'sdf')}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{extractDrugOBMACCS}

