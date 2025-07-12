EndpointRegistry <- R6::R6Class(
  classname = "EndpointRegistry",
  #--------------------------------------------------
  #----- Private
  #--------------------------------------------------
  private = list(
    # List of lists. Each inner list holds an Endpoint and its EndpointLabelMaker
    .entries = list(),

    # A named list used as a hash map to track the frequency of
    # each short_label encountered in the registry.
    .short_label_to_counts_map = list(),

    # A named list used as a reverse index to find URLs given a short_label.
    # URLs serve a unique IDs and are used as a key throughout the registry
    .short_label_to_url_map = list(),

    # Authoritative map of each URL to its resolved label
    .resolved_labels = list(),

    # Helper function to print a formatted summary of a single entry
    .entry_printer = function(index) {
      url <- names(private$.entries)[index]
      endpoint <- private$.entries[[url]]$endpoint
      label    <- private$.resolved_labels[[url]]

      cli::cli_text("{.cls {class(endpoint)[1]}} {cli::col_yellow({label})}")
      print(endpoint, .print_class = FALSE); cli::cli_text()
      invisible(self)
    }
  ),
  #--------------------------------------------------
  #----- Public
  #--------------------------------------------------
  public = list(
    #' @description Initialize a new EndpointRegistry.
    #' Creates an empty registry with clean state-tracking maps.
    initialize = function(ep_defs = NULL, ...) {
      private$.entries <- list()
      private$.short_label_to_counts_map <- list()
      private$.short_label_to_url_map    <- list()
      private$.resolved_labels           <- list()

      if (is.null(ep_defs)) return (invisible(self))
      # TODO (Medium priority). This is just a heuristic for detecting
      # TODO whether the `ep_defs` list is a list holding the values
      # TODO for a single endpoint definition or whether it's a list
      # TODO of lists holding many endpoint definitions.
      is_single_add <- is.list(ep_defs) && ("base_url" %in% names(ep_defs))

      if (is_single_add) {
        self$add_endpoint(ep_defs, ...)
      } else {
        self$add_endpoints(ep_defs, ...)
      }
      invisible(self)
    },

    #' @description Add a single endpoint and resolve label collisions
    #'    incrementally
    #'
    #' @param ep_def A list containing the named arguments for creating
    #'    a new `Endpoint`, i.e. its definition.
    #' @param .quiet Logical. If `TRUE`, suppresses informational messages
    #'    about collision resolution.
    add_endpoint = function(ep_def, .quiet = FALSE) {
      ### Initialize the Endpoint and EndpointLabelMaker
      endpoint <- do.call(Endpoint$new, ep_def)
      url <- endpoint$url # URL used as a uniquely identifying key

      if (url %in% names(private$.entries)) {
        if (!isTRUE(.quiet)) {
          cli::cli_alert_warning(
            "{cli::col_yellow(\"Skipping duplicate endpoint\")}: {.emph {url}}"
          )
          cli::cli_text()
        }
        return (invisible(self))
      }

      label_maker <- do.call(EndpointLabelMaker$new, endpoint$metadata)
      private$.entries[[url]] <- list(endpoint = endpoint, label_maker = label_maker)

      ### Incremental collision resolution for the newly added endpoint
      short_label <- label_maker$short_label
      long_label  <- label_maker$long_label

      this_count <- private$.short_label_to_counts_map[[short_label]] %||% 0L

      if (this_count == 0L) {
        # Case A: New, unique short_label
        private$.resolved_labels[[url]] <- short_label
      } else if (this_count == 1L) {
        # Case B: First collision for this short_label
        # This endpoint must use it's short label
        private$.resolved_labels[[url]] <- long_label

        # We must also update the previous endpoint to use its own long label
        prev_url <- private$.short_label_to_url_map[[short_label]][1L]
        prev_label_maker <- private$.entries[[prev_url]]$label_maker
        private$.resolved_labels[[prev_url]] <- prev_label_maker$long_label

        if (isTRUE(!.quiet)) {
          cli::cli_inform(c(
            "!" = "Resolving collision for label {cli::col_yellow({short_label})}:"
          ))
          cli::cli_alert_info(paste(
            "New endpoint {.url {url}} will use",
            "{cli::col_yellow({long_label})}"
          ))
          cli::cli_alert_info(paste(
            "Previous endpoint {.url {prev_url}} will use",
            "{cli::col_yellow({prev_label_maker$long_label})}"
          ))
          cli::cli_text()
        }
      } else { # Case C: this_count > 1
        # This will happen when this short_label was already part of a
        # known collision. In this case we only need to update the label
        # for the newly added endpoint as the previous endpoints using
        # this short_stem would have already gone through a resolution
        # cycle and therefore have already had their long_label set.
        #
        # NOTE: This fundamentally assumes that long_labels are unique
        # by construction. In general, this is questionable and a more
        # principled solution should be adopted. However, in the specific
        # context we have:
        # 1) A long_label is guaranteed to be unique within an individual
        #    API source (i.e. with respect to a single WADL) because they
        #    are essentially the unique path of that endpoint up to the
        #    common base url.
        # 2) The only risk of collision for a long_label is therefore
        #    for endpoints with identical path_templates but from different
        #    API sources. A trivial example are the "ping" endpoints
        #       "https://records.nhl.com/site/api/ping"
        #       "https://api.nhle.com/stats/rest/ping"
        #   In both cases, the only part of the path that is not in the base
        #   URL is simply "/ping". However, the EndpointLabelMaker class
        #   can be easily extended to add a unique prefix for each endpoints
        #   from each API source (it already does this for the "stats" API
        #   by prefixing "db_").
        #
        # Worst case scenario, I suppose, is that if we do not have any natural
        # prefix or any apriori knowledge about the source of the endpoint,
        # then one could always fallback to the full URL** if two long_label
        # values still collide.
        # (**) To be precise, because labels are used downstream to specify
        # function names, it would have to be a properly formatted full URL
        # that substitutes/drops non-standard characters for function naming.
        private$.resolved_labels[[url]] <- long_label
      }

      ### Update state-tracking maps with the new endpoint's info.
      private$.short_label_to_counts_map[[short_label]] <- this_count + 1
      private$.short_label_to_url_map[[short_label]] <-
        c(private$.short_label_to_url_map[[short_label]], url)

      invisible(self)
    },

    #' @description Add multiple endpoints from a list of definitions.
    #' @param ep_defs A list where each element is a list of endpoint
    #'    definitions, iterated over by `self$add_endpoint()`.
    #' @param .quiet Logical. If `TRUE`, suppresses collision messaging.
    add_endpoints = function(ep_defs, .quiet = FALSE) {
      cli::cli_alert_info("Adding {length(ep_defs)} endpoint{?s}...")
      cli::cli_text()

      purrr::walk(ep_defs, ~self$add_endpoint(.x, .quiet = .quiet))
      cli::cli_alert_success(paste(
        "Added {length(ep_defs)} endpoint{?s}. The registry now contains",
        "{cli::col_yellow(length(private$.entries))} endpoint{?s}."
      ))
      invisible(self)
    },

    #' @description Generate the final, fully parsed endpoint metadata.
    #' @return A named list of endpoint metadata, named according to
    #'    the resolved endpoint labels.
    generate_metadata = function(incl_labels = TRUE) {
      if (length(private$.entries) == 0L) {
        cli::cli_warn(c(
          "!" = "No endpoints found in registry. Returning an empty list.",
          "i" = "Use the `$add_endpoint()` or `$add_endpoints()` methods to populate it."
        ))
        return(list())
      }

      ep_meta <- purrr::map(private$.entries, ~.x$endpoint$metadata)
      names(ep_meta) <- unlist(private$.resolved_labels[names(ep_meta)])

      if (any(duplicated(names(ep_meta)))) {
        cli::cli_abort(c(
          "Duplicate labels found despite collision resolution.",
          "i" = "{.val {names(ep_meta)[duplicated(names(ep_meta))]}}"
        ), .internal = TRUE)
      }

      if (isTRUE(incl_labels)) {
        ep_meta <- purrr::imap(ep_meta, ~ c(.x, list(label = .y)))
      }
      return (ep_meta)
    },

    #' @description Print a summary of the registry to the console.
    #' @param max The maximum number of entries to print.
    print = function(..., max = 10) {
      n <- length(private$.entries)
      cli::cli_text("{.cls {class(self)[1]}} with {n} entr{?y/ies}")
      if (n == 0L) return(invisible(self))

      if (is.null(max)) max <- getOption("max.print", 99999L)
      if (!is.finite(max)) {
        cli::cli_abort("invalid 'max' / getOption(\"max.print\"): {.val {max}}")
      }

      nprint <- min(n, max)
      for (i in seq_len(nprint)) private$.entry_printer(i)

      if (max < n) {
        d <- n - max
        cli::cli_text(
          " [ reached 'max' / getOption(\"max.print\") -- omitted {d} Endpoint{?s} ]"
        )
      }
      invisible(self)
    }
  ),
  #--------------------------------------------------
  #----- Active (active bindings)
  #--------------------------------------------------
  active = list(
    # TODO (Medium priority). Probably do not want this exposed as even an
    # TODO active binding. Useful for development, though.
    endpoints = function(value) {
      if (missing(value)) return (purrr::map(private$.entries, "endpoint"))
      else cli::cli_abort(c("x" = "EndpointRegistry field `$entries` is read-only."))
    },
    labels = function(value) {
      if (missing(value)) {
        urls <- names(private$.entries)
        return(unname(unlist(private$.resolved_labels[urls])))
      } else {
        cli::cli_abort(c("x" = "EndpointRegistry field `$labels` is read-only."))
      }
    }
  )
)
