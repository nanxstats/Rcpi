\name{extractDrugPubChemComplete}
\alias{extractDrugPubChemComplete}
\title{Calculate the PubChem Molecular Fingerprints (in Complete Format)}
\usage{
  extractDrugPubChemComplete(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  An integer vector or a matrix. Each row represents one
  molecule, the columns represent the fingerprints.
}
\description{
  Calculate the PubChem Molecular Fingerprints (in Complete
  Format)
}
\details{
  Calculate the 881 bit fingerprints defined by PubChem.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugPubChemComplete(mols)
extractDrugPubChemComplete(mols[[1]])}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  \link{extractDrugPubChem}
}
\keyword{extractDrugPubChemComplete}

