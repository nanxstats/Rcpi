\name{readMolFromSmi}
\alias{readMolFromSmi}
\title{Read Molecules from SMILES String and Return Parsed Java Molecular Object}
\usage{
  readMolFromSmi(smiles)
}
\arguments{
  \item{smiles}{Character vector, containing SMILES
  string(s).}
}
\value{
  A list, containing parsed Java molecular object.
}
\description{
  Read Molecules from SMILES String and Return Parsed Java
  Molecular Object
}
\details{
  This function reads molecules from SMILES strings and
  return parsed Java molecular object needed by
  \code{extractDrug...} functions.
}
\examples{
\dontrun{
smi  = c('CCC', 'c1ccccc1', 'C(C)(C=O)C(CCNC)C1CC1C(=O)')
mol  = readMolFromSmi(smi[1])
mols = readMolFromSmi(smi)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\seealso{
  See \code{\link{readMolFromSDF}} for reading molecules
  from SDF files and returning parsed Java molecular
  object.
}
\keyword{MOL}
\keyword{readMolFromSmi}
\keyword{SMILES}

