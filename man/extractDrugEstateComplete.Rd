\name{extractDrugEstateComplete}
\alias{extractDrugEstateComplete}
\title{Calculate the E-State Molecular Fingerprints (in Complete Format)}
\usage{
extractDrugEstateComplete(molecules, silent = TRUE)
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
Calculate the E-State Molecular Fingerprints (in Complete
Format)
}
\details{
79 bit fingerprints corresponding to the E-State atom types
described by Hall and Kier.
}
\examples{
\donttest{
smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
mol = readMolFromSmi(smi, type = 'mol')
fp  = extractDrugEstateComplete(mol)
dim(fp)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
\link{extractDrugEstate}
}
\keyword{extractDrugEstateComplete}

