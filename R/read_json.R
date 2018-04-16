# read json to list
# @param .x path to json
read_json <- function(.x) {
  jsonlite::fromJSON(.x, simplifyDataFrame = FALSE)
}

read_metadata <- function(.x) {
  read_json(file.path(.x, "meta.json"))
}
