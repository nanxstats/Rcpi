\name{readMolFromSmi}
\alias{readMolFromSmi}
\title{Read Molecules from SMILES Files and Return Parsed Java Molecular Object}
\usage{
readMolFromSmi(smifile)
}
\arguments{
  \item{smiles}{Character vector, containing SMILES file
  location(s).}
}
\value{
A list, containing parsed Java molecular object.
}
\description{
Read Molecules from SMILES Files and Return Parsed Java
Molecular Object
}
\details{
This function reads molecules from SMILES strings and
return parsed Java molecular object needed by
\code{extractDrug...} functions.
}
\examples{
\dontrun{
smi  = system.file('vignettedata/bbbp11.smi', package = 'Rcpi')
mol  = readMolFromSmi(smi)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\seealso{
See \code{\link{readMolFromSDF}} for reading molecules from
SDF files and returning parsed Java molecular object.
}
\keyword{MOL}
\keyword{SMILES}
\keyword{readMolFromSmi}

