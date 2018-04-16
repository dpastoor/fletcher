#' turn cells to markdown
#' @param .content content
#' @param .nb notebook name
#' @param asset_path relative path to assets to content
#' @importFrom purrr map_chr
#' @export
template_content <- function(.content, .nb, asset_path = glue::glue("assets/{.nb}")) {
  map_chr(.content$cells, function(.cell) {
  if(.cell$type == "code") {
    return(paste(glue::glue("```{.cell$language}"), .cell$data, "```", sep = "\n", collapse = "\n"))
  }
  return(.cell$data)
}) %>%
    # some have trailing line, and some not, so lets clean up those with trailing line
    # as will normalize after
    stringr::str_replace_all("quiver-image-url", asset_path) %>%
    # all pngs in original have format .png =1000x900
    stringr::str_replace_all("png =\\d+x\\d+", "png") %>%
    stringr::str_replace_all("jpg =\\d+x\\d+", "jpg") %>%
    paste0(collapse = "\n\n")
}


#' write content template to a file
#' @param .ct content template
#' @param .file output file
#' @param append whether to append
#' @export
write_content <- function(.ct, .file, append = FALSE) {
  readr::write_file(.ct, .file, append = append)
}
