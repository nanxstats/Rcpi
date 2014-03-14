\name{extractDrugGravitationalIndex}
\alias{extractDrugGravitationalIndex}
\title{Descriptor Characterizing the Mass Distribution of the Molecule.}
\usage{
extractDrugGravitationalIndex(molecules, silent = TRUE)
}
\arguments{
  \item{molecules}{Parsed molucule object.}

  \item{silent}{Logical. Whether the calculating process
  should be shown or not, default is \code{TRUE}.}
}
\value{
A data frame, each row represents one of the molecules,
each column represents one feature. This function returns 9
columns: \itemize{ \item \code{GRAV.1} - gravitational
index of heavy atoms \item \code{GRAV.2} - square root of
gravitational index of heavy atoms \item \code{GRAV.3} -
cube root of gravitational index of heavy atoms \item
\code{GRAVH.1} - gravitational index - hydrogens included
\item \code{GRAVH.2} - square root of hydrogen-included
gravitational index \item \code{GRAVH.3} - cube root of
hydrogen-included gravitational index \item \code{GRAV.4} -
grav1 for all pairs of atoms (not just bonded pairs) \item
\code{GRAV.5} - grav2 for all pairs of atoms (not just
bonded pairs) \item \code{GRAV.6} - grav3 for all pairs of
atoms (not just bonded pairs) }
}
\description{
Descriptor Characterizing the Mass Distribution of the
Molecule.
}
\details{
Descriptor characterizing the mass distribution of the
molecule described by Katritzky et al. For modelling
purposes the value of the descriptor is calculated both
with and without H atoms. Furthermore the square and cube
roots of the descriptor are also generated as described by
Wessel et al.
}
\examples{
\donttest{
sdf = system.file('sysdata/OptAA3d.sdf', package = 'Rcpi')
mol = readMolFromSDF(sdf)
dat = extractDrugGravitationalIndex(mol)
head(dat)}
}
\author{
Nan Xiao <\url{http://www.road2stat.com}>
}
\references{
Katritzky, A.R. and Mu, L. and Lobanov, V.S. and Karelson,
M., Correlation of Boiling Points With Molecular Structure.
1. A Training Set of 298 Diverse Organics and a Test Set of
9 Simple Inorganics, J. Phys. Chem., 1996, 100:10400-10407.

Wessel, M.D. and Jurs, P.C. and Tolan, J.W. and Muskal,
S.M. , Prediction of Human Intestinal Absorption of Drug
Compounds From Molecular Structure, Journal of Chemical
Information and Computer Sciences, 1998, 38:726-735.
}
\keyword{Gravitational}
\keyword{Index}
\keyword{extractDrugGravitationalIndex}

