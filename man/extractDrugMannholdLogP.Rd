\name{extractDrugMannholdLogP}
\alias{extractDrugMannholdLogP}
\title{Descriptor that Calculates the LogP Based on a Simple Equation Using the Number of Carbons and Hetero Atoms}
\usage{
  extractDrugMannholdLogP(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
  A data frame, each row represents one of the molecules,
  each column represents one feature, This function returns
  one column named \code{MLogP}.
}
\description{
  Descriptor that Calculates the LogP Based on a Simple
  Equation Using the Number of Carbons and Hetero Atoms
}
\details{
  This descriptor calculates the LogP based on a simple
  equation using the number of carbons and hetero atoms.
  The implemented equation was proposed in Mannhold et al.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugMannholdLogP(mol)}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Mannhold, R., Poda, G. I., Ostermann, C., & Tetko, I. V.
  (2009). Calculation of molecular lipophilicity:
  State-of-the-art and comparison of log P methods on more
  than 96,000 compounds. Journal of pharmaceutical
  sciences, 98(3), 861-893.
}
\keyword{extractDrugMannholdLogP}
\keyword{LogP}
\keyword{Mannhold}

