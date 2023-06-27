loadMolecules <- function(molfiles, ...) {
    rlang::check_installed("rcdk", reason = "to load molecular structures")
    cl <- rlang::call2("load.molecules", .ns = "rcdk", molfiles = molfiles, ...)
    rlang::eval_tidy(cl)
}

getSmiles <- function(molecule, ...) {
    rlang::check_installed("rcdk", reason = "to generate SMILES representation")
    cl <- rlang::call2("get.smiles", .ns = "rcdk", molecule = molecule, ...)
    rlang::eval_tidy(cl)
}

parseSmiles <- function(smiles, ...) {
    rlang::check_installed("rcdk", reason = "to parse SMILES")
    cl <- rlang::call2("parse.smiles", .ns = "rcdk", smiles = smiles, ...)
    rlang::eval_tidy(cl)
}

evaluateDescriptor <- function(molecules, type, silent = TRUE) {
    rlang::check_installed("rcdk", reason = "to compute molecular descriptors")
    cl <- rlang::call2(
        "eval.desc",
        .ns = "rcdk",
        molecules = molecules,
        which.desc = paste0(
            "org.openscience.cdk.",
            "qsar.descriptors.molecular.",
            type
        ),
        verbose = !silent
    )
    rlang::eval_tidy(cl)
}

getFingerprint <- function(molecule, type, depth = 6, size = 1024, silent = TRUE) {
    rlang::check_installed("rcdk", reason = "to generate molecular fingerprints")
    cl <- rlang::call2(
        "get.fingerprint",
        .ns = "rcdk",
        molecule = molecule,
        type = type,
        depth = depth,
        size = size,
        verbose = !silent
    )
    rlang::eval_tidy(cl)
}
