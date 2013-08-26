# This class calculates Wiener path number and Wiener polarity number
# 
# This descriptor calculates the Wiener numbers. This includes the Wiener Path number and the Wiener Polarity Number. 
# Further information is given in Wiener path number: half the sum of all the distance matrix entries; Wiener polarity number: half the sum of all the distance matrix entries with a value of 3. For more information see [Wiener, Harry, Structural Determination of Paraffin Boiling Points, Journal of the American Chemical Society, 1947, 69:17-20, Unknown BibTeXML type: TOD2000].
# This descriptor uses no parameters.
# 
# This descriptor works properly with AtomContainers whose atoms contain implicit hydrogens or explicit hydrogens. Returns the following values
# 
#   * WPATH - weiner path number
#   * WPOL - weiner polarity number
# 
# 2 features: WPATH WPOL

extractDrugWienerNumbers = function (molecules, silent = TRUE) {
  
  x = rcdk::eval.desc(molecules, 
                      'org.openscience.cdk.qsar.descriptors.molecular.WienerNumbersDescriptor', 
                      verbose = !silent)
  
  return(x)
  
}
