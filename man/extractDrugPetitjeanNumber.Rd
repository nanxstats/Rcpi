\name{extractDrugPetitjeanNumber}
\alias{extractDrugPetitjeanNumber}
\title{Descriptor that Calculates the Petitjean Number of a Molecule}
\usage{
extractDrugPetitjeanNumber(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{PetitjeanNumber}.
}
\description{
Descriptor that Calculates the Petitjean Number of a
Molecule
}
\details{
This descriptor calculates the Petitjean number of a
molecule. According to the Petitjean definition, the
eccentricity of a vertex corresponds to the distance from
that vertex to the most remote vertex in the graph. The
distance is obtained from the distance matrix as the count
of edges between the two vertices. If \code{r(i)} is the
largest matrix entry in row \code{i} of the distance matrix
\code{D}, then the radius is defined as the smallest of the
\code{r(i)}. The graph diameter \code{D} is defined as the
largest vertex eccentricity in the graph.
(\url{http://www.edusoft-lc.com/molconn/manuals/400/chaptwo.html})
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugPetitjeanNumber(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{Petitjean}
\keyword{extractDrugPetitjeanNumber}

