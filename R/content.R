#' turn cells to markdown
#' @param .content content
#' @param asset_path relative path to assets to content
#' @importFrom purrr map_chr
#' @export
template_content <- function(.content, asset_path = "assets") {
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

#' copy resources
#' @param .x quiver note directory
#' @param .ad assets directory
#' @importFrom fs file_copy dir_create dir_exists
#' @export
copy_assets <- function(.x, .ad) {
  maybe_resources <- file.path(.x, "resources")
  copied <- NULL
  if(dir_exists(maybe_resources)) {
    if (!dir_exists(.ad)) {
      dir_create(.ad, recursive = TRUE)
    }
    resources <- dir_ls(maybe_resources, type = "file")
    copied <- file_copy(resources,
                        file.path(.ad, basename(resources)))
  }
  return(copied)
}

#' write content template to a file
#' @param .ct content template
#' @param .file output file
#' @param append whether to append
#' @export
write_content <- function(.ct, .file, append = FALSE) {
  readr::write_file(.ct, .file, append = append)
}
