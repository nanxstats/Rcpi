\name{extractDrugAcidicGroupCount}
\alias{extractDrugAcidicGroupCount}
\title{Calculates the Number of Acidic Groups Descriptor}
\usage{
  extractDrugAcidicGroupCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{nAcid}.
}
\description{
  Calculates the Number of Acidic Groups Descriptor
}
\details{
  Calculates the number of acidic groups descriptor. The
  list of acidic groups is defined by these SMARTS
  \code{"$([O;H1]-[C,S,P]=O)"},
  \code{"$([*;-;!$(*~[*;+])])"},
  \code{"$([NH](S(=O)=O)C(F)(F)F)"}, and
  \code{"$(n1nnnc1)"} originally presented in JOELib.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugAcidicGroupCount(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{Acid}
\keyword{Count}
\keyword{extractDrugAcidicGroupCount}
\keyword{Group}

