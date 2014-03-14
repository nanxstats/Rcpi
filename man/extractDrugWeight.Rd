\name{extractDrugWeight}
\alias{extractDrugWeight}
\title{Descriptor that Calculates the Total Weight of Atoms}
\usage{
extractDrugWeight(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature. This function returns
one column named \code{MW}.
}
\description{
Descriptor that Calculates the Total Weight of Atoms
}
\details{
This descriptor calculates the molecular weight.
}
\examples{
\donttest{
smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
mol = readMolFromSmi(smi, type = 'mol')
dat = extractDrugWeight(mol)
head(dat)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Weight}
\keyword{extractDrugWeight}

