Endpoint <- R6::R6Class(
  classname = "Endpoint",
  #--------------------------------------------------
  #----- Private
  #--------------------------------------------------
  private = list(
    #--- Private fields
    .base_url      = NULL,
    .path_template = NULL,
    .query_params  = NULL,

    .url           = NULL,
    .path_params   = NULL,

    #--- Private helpers
    .clean_path = function(path_raw) {
      path_df <- path_raw %||% "" |>
        stringr::str_split(pattern = "/", simplify = T) |>
        purrr::map_vec(~dplyr::as_tibble(.parse_path_segment(.x)))

      list(
        template = paste(path_df$segment, collapse = "/"),
        params   = path_df |>
          dplyr::filter(!is.na(name)) |>
          dplyr::select(-segment) # No longer needed
      )
    }
  ),
  #--------------------------------------------------
  #----- Public
  #--------------------------------------------------
  public = list(
    # NOTE: Arguments passed as dots are silently ignored. This means that
    # any other variables in the raw endpoint definitions (parsed from the WADL)
    # will not cause the Endpoint constructor to error out. This is by design
    # since I don't want the constructor to stop working for some unexpected
    # idiosyncratic variable. I just want it to clean up the endpoint definition
    # with respect to the specific variables used herein.
    initialize = function(base_url, path_raw = NULL, query_params = NULL, ...) {
      private$.base_url <- .validate_url(base_url)

      # Handle NULL and "", but let NA and NA_character_ error out
      if (is.null(path_raw) || isTRUE(nchar(path_raw) == 0L)) path_raw <- "/"
      path_raw <- .validate_string(path_raw)

      query_params <- if (NROW(query_params) == 0L) {
        # Empty argument (e.g. NULL, 0 row data frame, list()) are interpreted
        # as meaning that there are no query_params. Create the empty prototype
        # query parameter tibble that has (at least) a "name" column. Note
        # that this condition does not include NA values
        tibble(name = character())
      } else if (isTRUE(checkmate::check_atomic_vector(query_params, any.missing = FALSE))) {
        tibble(name = query_params)
      } else {
        .validate_data_frame(query_params)
      }

      .validate_names(names(query_params), must.include = "name")
      if (!("type" %in% names(query_params))) {
        query_params$type <- NA_character_
      }
      private$.query_params <- query_params

      path_resources <- private$.clean_path(path_raw)
      private$.path_template <- path_resources$template
      private$.path_params   <- path_resources$params

      private$.url <- .validate_url(private$.path_template, private$.base_url)
    },

    print = function(..., indent_str = "  ", .print_class = TRUE) {
      path_params <- private$.path_params
      query_params <- private$.query_params

      if (!isFALSE(.print_class)) cli::cli_text("{.cls {class(self)[1]}}")
      cat(" "); cli::cli_text("{.field URL}: {cli::col_blue({self$url})}")
      cat(" "); cli::cli_text("{.field Base URL}: {cli::col_blue({private$.base_url})}")
      cat(" "); cli::cli_text("{.field Path template}: {cli::col_blue(private$.path_template)}")

      path_fmt <- "{.field Path parameters}:"
      if (NROW(path_params) == 0L) {
        cat(" "); cli::cli_text(paste(path_fmt, "(none)"))
      } else {
        cat(" "); cli::cli_text(path_fmt)
        purrr::map(format(path_params)[-1], ~cat(indent_str, .x, "\n"))
      }

      query_fmt <- "{.field Query parameters}:"
      if (NROW(query_params) == 0L) {
        cat(" "); cli::cli_text(paste(query_fmt, "(none)"))
      } else {
        cat(" "); cli::cli_text(query_fmt)
        purrr::map(format(query_params)[-1], ~cat(indent_str, .x, "\n"))
      }

      invisible(self)
    }
  ),
  #--------------------------------------------------
  #----- Active (active bindings)
  #--------------------------------------------------
  active = list(
    url = function(value) {
      if (missing(value)) return (private$.url)
      else cli::cli_abort(c("x" = "Endpoint field `$url` is read-only."))
    },
    metadata = function(value) {
      if (missing(value)) {
        list(
          url           = private$.url,
          base_url      = private$.base_url,
          path_template = private$.path_template,
          path_params   = private$.path_params,
          query_params  = private$.query_params
        )
      } else {
        cli::cli_abort(c("x" = "Endpoint field `$metadata` is read-only."))
      }
    }
  )
)
