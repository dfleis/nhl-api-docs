# 03-parse.R
# Functions related to parsing the raw WADL files into a structured R object.

#--------------------------------------------------
#----- Helpers
#--------------------------------------------------
#' Extract and Tidy Parameters for an Endpoint
#'
#' This function takes a `<method>` or `<resource>` XML node and finds all
#' associated `<param>` nodes.
#'
#' @param node An `xml_node` object.
#'
#' @return A data frame of XML parameters
.extract_node_params <- function(node) {
  param_nodes <- xml2::xml_find_all(
    node, "./d1:request/d1:param | ./d1:param", xml2::xml_ns(node)
  )
  ptype <- dplyr::tibble(
    name  = character(),
    style = character(),
    type  = character()
  )

  purrr::map_vec(param_nodes, ~{
    dplyr::tibble(
      name  = xml2::xml_attr(.x, "name") %||% character(),
      style = xml2::xml_attr(.x, "style") %||% character(),
      type  = xml2::xml_attr(.x, "type") %||% character() |> stringr::str_remove("xs:")
    )
  }, .ptype = ptype)
}

#' Extract Details for a Single API Endpoint
#'
#' This is a core worker function. It takes a single `<method>` XML node
#' and extracts relevant information for that endpoint, including its
#' path, parameters, and the original method ID.
#'
#' @param method_node A single `xml_node` object for a <method>.
#'
#' @return A list containing the structured metadata for one endpoint.
.parse_endpoint <- function(method_node) {
  #--- Retrieve and format GET method query parameters
  query_params_df <- .extract_node_params(method_node) |>
    dplyr::filter(style == "query") |>
    dplyr::select(-style) # No longer needed

  #--- Retrieve and format path template parameters
  path_resources <- xml2::xml_parents(method_node) |>
    purrr::keep(~xml2::xml_name(.) == "resource") |>
    xml2::xml_attr("path") |>
    rev()

  path_raw <- path_resources |>
    stringr::str_remove("^/") |>
    stringr::str_remove("/$") |>
    paste(collapse = "/")

  #--- Collect and arrange
  list(
    method_id    = xml2::xml_attr(method_node, "id"), # Allow null? # %||% NA_character_,
    path_raw     = path_raw,
    query_params = query_params_df
  )
}

#' Parse a WADL File to Extract All GET Endpoints
#'
#' This is the main parsing function for a single WADL file. It reads the
#' file, finds all GET methods, and applies the extraction logic to each one,
#' returning a consolidated data frame of all endpoints.
#'
#' @param file_path The full path to the `.wadl` file.
#'
#' @return A list with the parsed endpoint metdata.
.parse_wadl <- function(file_path) {
  cli::cli_alert_info("Parsing {.path {file_path}}")

  wadl <- xml2::read_xml(file_path)
  base_url <- xml2::xml_attr(xml2::xml_find_first(wadl, ".//d1:resources"), "base") # NA if none exists
  GET_nodes <- xml2::xml_find_all(wadl, ".//d1:method[@name='GET']") # {xml_nodeset (0)} if none exists
  cli::cli_alert_info("Found  {length(GET_nodes)} HTTP GET methods")

  endpoint_list <- purrr::map(GET_nodes, ~{
    c(list(base_url = base_url), .parse_endpoint(.x))
  })
  cli::cli_alert_info("Parsed {length(endpoint_list)} endpoints")

  cli::cli_text()
  return (endpoint_list)
}

#--------------------------------------------------
#----- Principal orchestrator
#--------------------------------------------------
#' Reads WADL Files and Extract HTTP GET Method Endpoint Metadata
#'
#' @param file_paths A named list paths to the raw WADL files.

#' @return Parsed endpoint metadata
parse_wadls <- function(file_paths, ...) {
  cli::cli_alert_info("Parsing {length(file_paths)} file{?s}...")
  cli::cli_text()

  endpoint_meta <- purrr::map(file_paths, .parse_wadl)

  cli::cli_alert_info(paste(
    "Returning {.cls {class(endpoint_meta)[1]}} with {length(endpoint_meta)[1]}",
    "element{?s}: {.val {names(endpoint_meta)}}"
  ))

  cli::cli_alert_success("Parsing complete.")
  return (invisible(endpoint_meta))
}
