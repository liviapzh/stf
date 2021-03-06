#' Reads pdf files
#'
#' @param file Paths to the pdf files to be read.
#' @param plan Defaults to "sequential". Check \code{future::plan} for more
#'     information.
#' @return a tibble with tree columns: incidente, texto, and doc_id.
#' @export
#'
#' @examples
#' \dontrun{
#' read_stf_pdf(file = "")
#' }
read_stf_pdf <- function(file = NULL, plan = "sequential") {
  future::plan(plan)


  furrr::future_map_dfr(file, purrr::possibly(~ {
    texto <- pdftools::pdf_text(.x) %>%
      paste0(collapse = "")
    doc_id <- stringr::str_extract(.x, "(?<=docid_)\\d+")
    incidente <- stringr::str_extract(.x, "(?<=incidente_)\\d+")
    tibble::tibble(incidente = incidente, texto = texto, doc_id = doc_id)
  }, NULL), .progress = TRUE)
}
