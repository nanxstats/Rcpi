\name{extractDrugBPol}
\alias{extractDrugBPol}
\title{Calculates the Descriptor that Describes the Sum of the Absolute Value of the Difference between Atomic Polarizabilities of All Bonded Atoms in the Molecule}
\usage{
extractDrugBPol(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature, This function returns
one column named \code{bpol}.
}
\description{
Calculates the Descriptor that Describes the Sum of the
Absolute Value of the Difference between Atomic
Polarizabilities of All Bonded Atoms in the Molecule
}
\details{
This descriptor calculates the sum of the absolute value of
the difference between atomic polarizabilities of all
bonded atoms in the molecule (including implicit hydrogens)
with polarizabilities taken from
\url{http://www.sunysccc.edu/academic/mst/ptable/p-table2.htm}.
This descriptor assumes 2-centered bonds.
}
\examples{
\dontrun{
mol = parse.smiles(c('CCC', 'c1ccccc1', 'CC(=O)C'))
extractDrugBPol(mol)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\keyword{BPol}
\keyword{Polarizability}
\keyword{extractDrugBPol}

