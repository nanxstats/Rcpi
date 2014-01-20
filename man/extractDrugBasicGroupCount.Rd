\name{extractDrugBasicGroupCount}
\alias{extractDrugBasicGroupCount}
\title{Calculates the Descriptor that Describes the Number of Basic Groups}
\usage{
extractDrugBasicGroupCount(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{nBase}.
}
\description{
Calculates the Descriptor that Describes the Number of
Basic Groups
}
\details{
Calculates the number of basic groups. The list of basic
groups is defined by these SMARTS
\code{"[$([NH2]-[CX4])]"},
\code{"[$([NH](-[CX4])-[CX4])]"},
\code{"[$(N(-[CX4])(-[CX4])-[CX4])]"},
\code{"[$([*;+;!$(*~[*;-])])]"}, \code{"[$(N=C-N)]"}, and
\code{"[$(N-C=N)]"} originally presented in JOELib.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugBasicGroupCount(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Basic}
\keyword{Count}
\keyword{Group}
\keyword{extractDrugBasicGroupCount}

