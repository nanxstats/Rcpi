#' Get URLs in parallel using httr2
#'
#' @param url A vector string of URLs.
#' @param total_con Max total number of concurrent connections.
#'
#' @return A list of response strings in UTF-8.
#'
#' @importFrom httr2 request req_perform_parallel resp_body_string
#' @importFrom curl new_pool
#'
#' @noRd
get_url_parallel <- function(url, total_con) {
  k <- length(url)
  reqs <- vector("list", k)
  for (i in seq_len(k)) reqs[[i]] <- httr2::request(url[i])
  resp <- httr2::req_perform_parallel(
    reqs,
    pool = curl::new_pool(total_con = total_con),
    on_error = "continue"
  )
  txt <- vector("list", k)
  for (i in seq_len(k)) txt[[i]] <- httr2::resp_body_string(resp[[i]])
  txt
}
