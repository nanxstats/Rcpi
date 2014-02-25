\name{readMolFromSmi}
\alias{readMolFromSmi}
\title{Read Molecules from SMILES Files and Return Parsed Java Molecular Object or Plain Text List}
\usage{
readMolFromSmi(smifile, type = c("mol", "text"))
}
\arguments{
  \item{smifile}{Character vector, containing SMILES file
  location(s).}

  \item{type}{\code{'mol'} or \code{'text'}. \code{'mol'}
  returns parsed Java molecular object, used for
  \code{'text'} returns (plain-text) character string list.
  For common molecular descriptors and fingerprints, use
  \code{'mol'}. For descriptors and fingerprints calculated
  by OpenBabel, i.e. functions named
  \code{extractDrugOB...()} , use \code{'text'}.}
}
\value{
A list, containing parsed Java molecular object or
character strings.
}
\description{
Read Molecules from SMILES Files and Return Parsed Java
Molecular Object or Plain Text List
}
\details{
This function reads molecules from SMILES strings and
return parsed Java molecular object or plain text list
needed by \code{extractDrug...()} functions.
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

