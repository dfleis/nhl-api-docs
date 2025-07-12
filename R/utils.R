#' Convert a Hyphenated String to camelCase
#'
#' @param x A character string.
#'
#' @return A camelCase version of the string.
#' @noRd
.hyphen_to_camel <- function(x) {
  gsub("-(\\w)", "\\U\\1", x, perl = TRUE)
}

#' Formats a Path String into a Valid R Function Name
#'
#' Replaces forward slashes and hyphens with underscores.
#'
#' @param path A character string, URL path/path template.
#'
#' @return A cleaned character string in snake_case.
#' @noRd
.path_to_snake_case <- function(path) {
  path |>
    stringr::str_replace_all("[/-]", "_") |>
    stringr::str_replace_all("_+", "_") |>
    stringr::str_remove("^_|_$")
}

#' Parses a Single Segment of a URL Path
#'
#' This helper function takes one segment (e.g., `"{season: [0-9]{8}}"`)
#' and returns its name and a regex pattern, if any exists.
#'
#' @param segment A single character string from a URL path.
#'
#' @return A named list with fields `name`, `segment`, and `regex`.
.parse_path_segment = function(segment) {

  param_name <- NA_character_
  param_segment <- segment
  param_regex <- NA_character_

  # The segment is a legitimate templated parameter with curly braces
  if (stringr::str_starts(segment, "\\{") && stringr::str_ends(segment, "\\}")) {
    # Look for a colon in the template parameter segment between the curly
    # braces e.g. "{season: [0-9]{8}}" or "{game-type: [0-9]{1,2}}", in
    # contrast to parameters without regex information in the path as in,
    # e.g., "{playerId}".
    content <- stringr::str_sub(segment, 2, -2) # Drop the outer braces

    # Separate the content into the name and the regex components. If no
    # regex component is present, this will be an empty string "".
    split_content <- stringr::str_split_fixed(content, ":", n = 2)

    param_name <- .hyphen_to_camel(split_content[1])
    param_segment <- sprintf("{%s}", param_name)

    if (nchar(split_content[2]) > 0L) {
      # TODO May want to also do a is.character(split_content[2]) check?
      # TODO Validate whether the content contains usable regex info?
      param_regex <- trimws(split_content[2])
    }
  }

  list(
    name    = param_name,
    segment = param_segment,
    regex   = param_regex
  )
}

#---- Input validation
# Intended to be used with checkmate::assert_* functions that return the
# value if it passes the assertion and throws an informative error otherwise.
.rlang_assert <- function(x, assert_fn, ..., arg = rlang::caller_arg(x),
                          call = rlang::caller_env()) {
  asserted <- tryCatch(assert_fn(x, ...), error = function(e) e)

  if (rlang::is_error(asserted)) {
    rlang::abort(message = asserted$message, call = call, arg = arg)
  }
  return (invisible(asserted))
}

.validate_url <- function(url, base_url = NULL, as_httr2 = FALSE) {
  assert_url <- function(u, b) {
    url_obj <- httr2::url_parse(url = u, base_url = b)
    if (isTRUE(as_httr2)) return (url_obj)
    return (httr2::url_build(url_obj))
  }
  .rlang_assert(url, assert_url, b = base_url)
}

.validate_string <- function(x, ...) {
  .rlang_assert(x, checkmate::assert_string, ...)
}
.validate_data_frame <- function(x, ...) {
  .rlang_assert(x, checkmate::assert_data_frame, ...)
}
.validate_names <- function(x, ...) {
  .rlang_assert(x, checkmate::assert_names, ...)
}


#----- File system utilities
#' Save an R object to both RDS and JSON formats
#'
#' Saves an R object to disk as RDS for R-native storage and JSON for
#' human-readability and interoperability. It creates the directory, handles
#' batch file path generation for the different file types, and prints a
#' success message.
#'
#' @param object The R object to be saved.
#' @param dest_file A single character string with the path where the files
#'    will be saved. It can include any extension, e.g. `path/to/output.rds` or
#'    `path/to/output.json`, or no extension at all, e.g. `path/to/output`, and
#'    is used for each output format up to the unique file extension.
#' @param ... Additional named arguments to be passed to
#'    `jsonlite::write_json()`.
#' @param type Save the file as `.rds`, `.json`, or all.
#'
#' @return Invisibly returns the saved paths.
save_data_as <- function(object, dest_file, ..., type = c("all", "rds", "json"),
                      name = rlang::caller_arg(object)) {
  type <- rlang::arg_match(type)
  paths <- sapply(
    c("rds", "json"), fs::path_ext_set, path = dest_file,
    USE.NAMES = T, simplify = F
  )

  # Cannot pass `dest_file` directly to fs::path_dir because it will strip
  # the last segment whenever it does not have a file extension
  dir_path <- fs::path_dir(paths[[1]])
  fs::dir_create(dir_path)

  .success_printer <- function(path) {
    filename <- fs::path_file(path)
    filesize <- lobstr:::format.lobstr_bytes(fs::file_size(path))
    cli::cli_alert_success(
      "Saved {.var {name}} as {.path {filename}} ({cli::col_yellow({filesize})})"
    )
  }

  if (type %in% c("json", "all")) {
    #--- JSON
    args_json <- list(
      x = object,
      path = paths$json,
      pretty = TRUE,
      na = "string",
      auto_unbox = TRUE
    )
    args_json <- utils::modifyList(args_json, list(...)) # Let users override

    do.call(jsonlite::write_json, args_json)
    .success_printer(paths$json)
  }


  if (type %in% c("rds", "all")) {
    #--- RDS
    saveRDS(object = object, file = paths$rds)
    .success_printer(paths$rds)
  }

  invisible(paths)
}
