EndpointLabelMaker <- R6::R6Class(
  classname = "EndpointLabelMaker",
  private = list(
    .short_label = NULL,
    .long_label  = NULL,

    .BASE_URL_PREFIX_MAP = list(
      "https://records.nhl.com/site/api/" = "recs",
      "https://api.nhle.com/stats/rest/"  = "stats",
      "https://api-web.nhle.com/"         = "web"
    ),

    .make_label = function(base_url, path_template, incl_params = FALSE) {
      # Heuristic 1: Ignore parameters for the label
      # Heuristic 2: Clean the path according to .path_to_snake_case()
      # Heuristic 3: For "web" and "stats", clean redundant prefixes and add unique prefix
      # Heuristic 4: Re-introduce parameter names to disambiguate Heuristic 2
      prefix <- private$.BASE_URL_PREFIX_MAP[[base_url]]

      path_template <- if (length(prefix) == 0L) { # Safely handle degenerate cases
        path_template
      } else if (prefix == "web") { # Heuristic 3
        stringr::str_remove(path_template, "^v1/")
      } else if (prefix == "stats") { # Heuristic 3
        paste0("db_", stringr::str_remove(path_template, "^\\{lang\\}/"))
      } else {
        path_template
      }

      path_template <- if (incl_params) {
        stringr::str_remove_all(path_template, "[{}]") # Heuristic 4
      } else {
        stringr::str_remove_all(path_template, "\\{[^}]+\\}") # Heuristic 1
      }

      .path_to_snake_case(path_template) # Heuristic 2
    }
  ),
  public = list(
    initialize = function(base_url, path_template, ...) {
      base_url <- .validate_url(base_url)
      path_template <- .validate_string(path_template)

      private$.short_label <- private$.make_label(base_url, path_template, incl_params = FALSE)
      private$.long_label  <- private$.make_label(base_url, path_template, incl_params = TRUE)
    }
  ),
  active = list(
    short_label = function(value) {
      if (missing(value)) return (private$.short_label)
      else cli::cli_abort(c("x" = "EndpointLabelMaker field `$short_label` is read-only."))
    },
    long_label = function(value) {
      if (missing(value)) return (private$.long_label)
      else {cli::cli_abort(c("x" = "EndpointLabelMaker field `$long_label` is read-only."))
      }
    }
  )
)
