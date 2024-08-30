is_pwalign_needed <- function() {
    rlang::is_installed("Biostrings", version = "2.72.0")
}

is_pwalign_installed <- function() {
    rlang::is_installed("pwalign")
}

#' @importFrom utils getFromNamespace
get_pwa <- function(ns) {
    getFromNamespace("pairwiseAlignment", ns = ns)
}

resolve_pwa <- function() {
    if (!is_pwalign_needed()) {
        return(get_pwa("Biostrings"))
    }

    if (!is_pwalign_installed()) {
        stop("The package \"pwalign\" is required. Please install it from Bioconductor.", call. = FALSE)
    }

    get_pwa("pwalign")
}
