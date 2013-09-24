\name{extractDrugMACCSComplete}
\alias{extractDrugMACCSComplete}
\title{Calculate the MACCS Molecular Fingerprints (in Complete Format)}
\usage{
  extractDrugMACCSComplete(molecules, silent = TRUE)
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
  Calculate the MACCS Molecular Fingerprints (in Complete
  Format)
}
\details{
  The popular 166 bit MACCS keys described by MDL.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugMACCSComplete(mols)
extractDrugMACCSComplete(mols[[1]])}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  \link{extractDrugMACCS}
}
\keyword{extractDrugMACCSComplete}

