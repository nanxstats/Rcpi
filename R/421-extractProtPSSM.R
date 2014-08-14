#' Compute PSSM (Position-Specific Scoring Matrix) for given protein sequence
#'
#' Compute PSSM (Position-Specific Scoring Matrix) for given protein sequence
#'
#' This function calculates the PSSM (Position-Specific Scoring Matrix) derived
#' by PSI-Blast for given protein sequence or peptides. 
#' For given protein sequences or peptides, PSSM represents the 
#' log-likelihood of the substitution of the 20 types of amino acids at that 
#' position in the sequence. Note that the output value is not normalized.
#'
#' @param seq Character vector, as the input protein sequence.
#' @param start.pos Optional integer denoting the start position of the 
#' fragment window. Default is \code{1}, 
#' i.e. the first amino acid of the given sequence.
#' @param end.pos Optional integer denoting the end position of the 
#' fragment window. Default is \code{nchar(seq)}, 
#' i.e. the last amino acid of the given sequence.
#' @param psiblast.path Character string indicating the path of the 
#' \code{psiblast} program.
#' If NCBI Blast+ was previously installed in the operation system, 
#' the path will be automatically detected.
#' @param makeblastdb.path Character string indicating the path of the 
#' \code{makeblastdb} program.
#' If NCBI Blast+ was previously installed in the system, 
#' the path will be automatically detected.
#' @param database.path Character string indicating the path of 
#' a reference database (a FASTA file).
#' @param iter Number of iterations to perform for PSI-Blast.
#' @param silent Logical. Whether the PSI-Blast running output 
#' should be shown or not (May not work on some Windows versions and 
#' PSI-Blast versions), default is \code{TRUE}.
#'
#' @return The original PSSM, a numeric matrix which has 
#' \code{end.pos - start.pos + 1} columns and \code{20} named rows.
#'
#' @note
#' The function requires the \code{makeblastdb} and \code{psiblast} programs
#' to be properly installed in the operation system or 
#' their paths provided.
#'
#' The two command-line programs are included in the NCBI-BLAST+ 
#' software package. To install NCBI Blast+, just open the NCBI FTP site 
#' using web browser or FTP software: 
#' \url{ftp://anonymous@@ftp.ncbi.nlm.nih.gov:21/blast/executables/blast+/LATEST/}
#' then download the executable version of BLAST+ according to your 
#' operation system, and compile or install the downloaded 
#' source code or executable program.
#'
#' Ubuntu/Debian users can directly use the command
#' \code{sudo apt-get install ncbi-blast+} to install NCBI Blast+.
#' For OS X users, download \code{ncbi-blast- ... .dmg} then install.
#' For Windows users, download \code{ncbi-blast- ... .exe} then install.
#'
#' @seealso \link{extractProtPSSMFeature} \link{extractProtPSSMAcc}
#'
#' @keywords extract PSSM Blast Alignment
#'
#' @aliases extractProtPSSM
#'
#' @author Nan Xiao <\url{http://r2s.name}>
#'
#' @export extractProtPSSM
#'
#' @references
#' Altschul, Stephen F., et al. 
#' "Gapped BLAST and PSI-BLAST: a new generation of protein database search programs." 
#' \emph{Nucleic acids research} 25.17 (1997): 3389--3402.
#'
#' Ye, Xugang, Guoli Wang, and Stephen F. Altschul. 
#' "An assessment of substitution scores for protein profile-profile comparison." 
#' \emph{Bioinformatics} 27.24 (2011): 3356--3363.
#'
#' Rangwala, Huzefa, and George Karypis. 
#' "Profile-based direct kernels for remote homology detection and fold recognition." 
#' \emph{Bioinformatics} 21.23 (2005): 4239--4247.
#'
#' @examples
#' \donttest{
#' x = readFASTA(system.file('protseq/P00750.fasta', package = 'Rcpi'))[[1]]
#' dbpath = tempfile('tempdb', fileext = '.fasta')
#' invisible(file.copy(from = system.file('protseq/Plasminogen.fasta', package = 'Rcpi'), to = dbpath))
#' pssmmat = extractProtPSSM(seq = x, database.path = dbpath)
#' dim(pssmmat)  # 20 x 562 (P00750: length 562, 20 Amino Acids)
#' }
#'

extractProtPSSM = function(seq, start.pos = 1L, end.pos = nchar(seq), 
                                 psiblast.path = NULL, makeblastdb.path = NULL, 
                                 database.path = NULL, iter = 5, silent = TRUE) {

    if (Sys.which('makeblastdb') == '' & is.null(makeblastdb.path))
        stop('Please install makeblastdb (included in the NCBI BLAST+) or specify makeblastdb.path.')

    if (Sys.which('psiblast') == '' & is.null(psiblast.path))
        stop('Please install psiblast (included in the NCBI BLAST+) or specify psiblast.path.')

    makeblastdb.path = if (!is.null(makeblastdb.path)) makeblastdb.path else Sys.which('makeblastdb')
    psiblast.path = if (!is.null(psiblast.path)) psiblast.path else Sys.which('psiblast')

    if (is.null(database.path)) stop('Must specify the database (a FASTA file) path')

    N = end.pos - start.pos + 1L

    # Prepare data for PSI-Blast

    tmpdb = tempfile('RcpiPSIBlastDB')

    cmddb = paste0(shQuote(makeblastdb.path), ' -dbtype prot -in ', 
                   shQuote(database.path), ' -out ', shQuote(tmpdb))

    if (silent == TRUE) system(cmddb, ignore.stdout = TRUE) else system(cmddb)

    tmp = tempfile('RcpiPSIBlast')
    queryFasta = paste0(tmp, '.fasta')
    PSSMfile = paste0(tmp, '.pssm')
    querySeq = AAStringSet(seq)
    writeXStringSet(querySeq, queryFasta)

    # Run PSI-Blast

    cmdpsi = paste0(shQuote(psiblast.path), 
                    ' -comp_based_stats 1 -db ', shQuote(tmpdb), 
                    ' -query ', shQuote(queryFasta), ' -num_iterations ', iter, 
                    ' -out_ascii_pssm ', shQuote(PSSMfile))

    if (silent == TRUE) system(cmdpsi, ignore.stdout = TRUE) else system(cmdpsi)

    PSSMraw = readLines(PSSMfile)

    PSSMClean = function(x) {
        y = unlist(strsplit(PSSMraw[x + 3], split = '\\s+'))
        return(-as.numeric(y[4L:23L]))
    }

    PSSMmat = sapply(start.pos:end.pos, PSSMClean)

    AADict = c('A', 'R', 'N', 'D', 'C', 'Q', 'E', 'G', 'H', 'I', 
               'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V')
    rownames(PSSMmat) = AADict

    return(PSSMmat)

}
