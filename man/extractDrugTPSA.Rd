\name{extractDrugTPSA}
\alias{extractDrugTPSA}
\title{Descriptor of Topological Polar Surface Area Based on
Fragment Contributions (TPSA)}
\usage{
extractDrugTPSA(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature. This function returns
one column named \code{TopoPSA}.
}
\description{
Descriptor of Topological Polar Surface Area Based on
Fragment Contributions (TPSA)
}
\details{
Calculate the descriptor of topological polar surface area
based on fragment contributions (TPSA).
}
\examples{
\donttest{
smi = system.file('vignettedata/FDAMDD.smi', package = 'Rcpi')
mol = readMolFromSmi(smi, type = 'mol')
dat = extractDrugTPSA(mol)
head(dat)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\references{
Ertl, P., Rohde, B., & Selzer, P. (2000). Fast calculation
of molecular polar surface area as a sum of fragment-based
contributions and its application to the prediction of drug
transport properties. Journal of medicinal chemistry,
43(20), 3714-3717.
}
\keyword{Area}
\keyword{Polar}
\keyword{Surface}
\keyword{Topological}
\keyword{extractDrugTPSA}

