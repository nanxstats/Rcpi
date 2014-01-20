\name{extractDrugFMF}
\alias{extractDrugFMF}
\title{Calculates the FMF Descriptor}
\usage{
extractDrugFMF(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{FMF}.
}
\description{
Calculates the FMF Descriptor
}
\details{
Calculates the FMF descriptor characterizing molecular
complexity in terms of its Murcko framework. This
descriptor is the ratio of heavy atoms in the framework to
the total number of heavy atoms in the molecule. By
definition, acyclic molecules which have no frameworks,
will have a value of 0. Note that the authors consider an
isolated ring system to be a framework (even though there
is no linker).
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugFMF(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\references{
Yang, Y., Chen, H., Nilsson, I., Muresan, S., & Engkvist,
O. (2010). Investigation of the relationship between
topology and selectivity for druglike molecules. Journal of
medicinal chemistry, 53(21), 7709-7714.
}
\keyword{FMF}
\keyword{extractDrugFMF}

