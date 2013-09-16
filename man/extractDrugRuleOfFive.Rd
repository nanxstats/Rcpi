\name{extractDrugRuleOfFive}
\alias{extractDrugRuleOfFive}
\title{Descriptor that Calculates the Number Failures of the Lipinski's Rule Of Five}
\usage{
  extractDrugRuleOfFive(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{LipinskiFailures}.
}
\description{
  Descriptor that Calculates the Number Failures of the
  Lipinski's Rule Of Five
}
\details{
  This descriptor calculates the number failures of the
  Lipinski's Rule Of Five:
  \url{http://en.wikipedia.org/wiki/Lipinski\%27s_Rule_of_Five}.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugRuleOfFive(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\keyword{extractDrugRuleOfFive}
\keyword{Five}
\keyword{Lipinski}
\keyword{Rule}

