\name{extractDrugKRComplete}
\alias{extractDrugKRComplete}
\title{Calculate the KR (Klekota and Roth) Molecular Fingerprints (in Complete Format)}
\usage{
extractDrugKRComplete(molecules, silent = TRUE)
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
Calculate the KR (Klekota and Roth) Molecular Fingerprints
(in Complete Format)
}
\details{
Calculate the 4860 bit fingerprint defined by Klekota and
Roth.
}
\examples{
\dontrun{
smiles = c('CCC', 'CCN', 'CCN(C)(C)', 'c1ccccc1Cc1ccccc1','C1CCC1CC(CN(C)(C))CC(=O)CC')
mols = parse.smiles(smiles)
extractDrugKRComplete(mols)
extractDrugKRComplete(mols[[1]])}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
\link{extractDrugKR}
}
\keyword{extractDrugKRComplete}

