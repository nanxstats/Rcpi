\name{calcDrugSim}
\alias{calcDrugSim}
\title{Calculate the Similarity of Drug Molecule Fingerprints}
\usage{
  calcDrugSim(fp1, fp2, fptype = c("compact", "complete"),
    metric = c("tanimoto", "euclidean", "cosine", "dice", "hamming"))
}
\arguments{
  \item{fp1}{The first molecule's fingerprints, could be
  extracted by \code{extractDrugMACCS()},
  \code{extractDrugMACCSComplete()} etc.}

  \item{fp2}{The second molecule's fingerprints.}

  \item{fptype}{The fingerprint type, must be one of
  \code{"compact"} or \code{"complete"}.}

  \item{metric}{The similarity metric, one of
  \code{"tanimoto"}, \code{"euclidean"}, \code{"cosine"},
  \code{"dice"} and \code{"hamming"}.}
}
\value{
  The numeric similarity value.
}
\description{
  Calculate the Similarity of Drug Molecule Fingerprints
}
\details{
  This function calculate drug molecule fingerprints
  similarity. Define \code{a} as the features of object A,
  \code{b} is the features of object B, \code{c} is the
  number of common features to A and B: \itemize{ \item
  Tanimoto: aka Jaccard - \eqn{c/a+b+c} \item Euclidean:
  \eqn{\sqrt(a + b)} \item Dice: aka Sorensen, Czekanowski,
  Hodgkin-Richards - \eqn{c/0.5[(a+c) + (b+c)]} \item
  Cosine: aka Ochiai, Carbo - \eqn{c/\sqrt((a + c)(b + c))}
  \item Hamming: aka Manhattan, taxi-cab, city-block
  distance - \eqn{(a + b)} }
}
\examples{
\dontrun{
smiles = c('C1CCC1CC(CN(C)(C))CC(=O)CC', 'c1ccccc1Cc1ccccc1')
mols = readMolFromSmi(smiles)

fp1 = extractDrugEstate(mols[[1]])
fp2 = extractDrugEstate(mols[[2]])
calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'tanimoto')
calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'euclidean')
calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'cosine')
calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'dice')
calcDrugSim(fp1, fp2, fptype = 'compact', metric = 'hamming')

fp3 = extractDrugEstateComplete(mols[[1]])
fp4 = extractDrugEstateComplete(mols[[2]])
calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'tanimoto')
calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'euclidean')
calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'cosine')
calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'dice')
calcDrugSim(fp3, fp4, fptype = 'complete', metric = 'hamming')}
}
\author{
  Xiao Nan <\url{http://www.road2stat.com}>
}
\references{
  Gasteiger, Johann, and Thomas Engel, eds.
  Chemoinformatics. Wiley.com, 2006.
}
\keyword{calcDrugSim}
\keyword{Cosine}
\keyword{Dice}
\keyword{Drug}
\keyword{Euclidean}
\keyword{Hamming}
\keyword{Similarity}
\keyword{Tanimoto}

