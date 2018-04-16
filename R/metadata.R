
# number notes
# @param .x path to qvnotebook
notebook_meta <- function(.x) {
  metadata <- read_metadata(.x)
  notes <- list_notes(.x)
  if (!length(notes)) {
    notes <- NA_character_
  }
  return(list(
    path = .x,
    name = metadata$name,
    note_paths = notes
  ))
}

#' list notebooks in a quiver library
#' @param .x quiver library
#' @importFrom fs dir_ls
#' @importFrom purrr set_names
#' @export
notebook_info <- function(.x, .df = FALSE) {
  qvnb <- dir_ls(.x ,type = "directory", glob = "*.qvnotebook")
  output <- set_names(map(qvnb, notebook_meta),
            tools::file_path_sans_ext(basename(qvnb)))
  return(output)
}


#' details from a given note
#' @param .x path to qvnote
note_details <- function(.x) {
  metadata <- read_metadata(.x)
  return(list(
    meta = metadata,
    content = read_json(file.path(.x, "content"))
  ))
}

#' list notes in a quiver notebook
#' @param .x quiver notebook
#' @export
#' @importFrom fs dir_ls
list_notes <- function(.x) {
  dir_ls(.x ,type = "directory", glob = "*.qvnote")
}
