################################################################################
# zz-make-readme.R
#
################################################################################
local({
  pkgs <- c("cli", "dplyr", "fs", "jsonlite", "knitr", "purrr", "rlang", "yaml")

  missing_pkgs <- pkgs[!sapply(pkgs, requireNamespace, quietly = TRUE)]
  if (length(missing_pkgs) > 0L) {
    cli::cli_abort(c(
      "x" = paste(
        "The following {length(missing_pkgs)} package{?s} are missing",
        "and must be installed: {.pkg {missing_pkgs}}."
      )
    ))
  }

  lapply(pkgs, library, character.only = TRUE, warn.conflicts = FALSE)
  cli::cli_alert_success("Loaded {length(pkgs)} package{?s}.")
  return (invisible(pkgs))
})

.endpoints_rds_path <- local({
  config <- yaml::read_yaml("_config.yml")
  fs::path_ext_set(config$paths$final, "rds")
})

make_readme <- function(endpoints_rds = .endpoints_rds_path, destfile = "README.md") {
  cli::cli_h1("{format(Sys.time())} :: Start README generation")

  #----- Loading, restructure data
  cli::cli_h2("Prepare data")

  endpoints <- tryCatch(readRDS(endpoints_rds), error = function(e) e, warning = function(w) w)
  if (rlang::is_error(endpoints) || rlang::is_warning(endpoints)) {
    rlang::abort(message = endpoints$message)
  }

  cli::cli_inform(c(
   "v" = "Read {.path {endpoints_rds}}",
   "i" = paste(
     "Loaded {cli::col_yellow({length(endpoints)})}",
     "endpoints as {.cls {class(endpoints)[1]}}"
   )
  ))
  cli::cli_text()

  {
  # Separate into the corresponding base URL groups. This call errors out
  # if an element (endpoint) does not contain a "base_url".
  endpoint_groups <- split(endpoints, purrr::map_chr(endpoints, "base_url"))
  group_lens <- sapply(endpoint_groups, length)
  cli::cli_alert_info(paste(
    "Endpoints separated into {cli::col_yellow({length(endpoint_groups)})}",
    "groups by {.field base_url}:"
  ))
  cli::cli_div(theme = list( # Open div to start a temp theme for the body
    span.dt = list(prefix = "\u00a0- ", color = "blue", before  = "\"", after = "\""),
    span.dd = list(color = "yellow")
  ))
  cli::cli_dl(group_lens)
  cli::cli_end() # Close div
  }

  #----- Markdown generation proper
  cli::cli_h2("Build README")

  #--- Main title and introductory comments...
  cli::cli_alert_info("Main title and introductory comments...")

  md_title <- "# **Unofficial** NHL Data API Reference Documentation"


  md_TODO_header <- "## TODO"
  md_TODO <- glue::glue(.sep = " ",
    "* Bring TOC up to the top\n",
    "* Add intro to TOC\n",
    "* Somehow think of a sensible way to organize the 500+ endpoints\n"
  )

  md_intro_header <- "## Introduction"
  md_intro <- glue::glue(.sep = " ",
    "This document provides unofficial documentation **{length(endpoints)}**",
    "data endpoints (HTTP GET methods) across **{length(endpoint_groups)}**",
    "base URL groups:"
  )
  md_intro_tbl <- knitr::kable(group_lens, col.names = c("Base URL", "Parsed Endpoints"))
  md_intro2 <- glue::glue(.sep = " ",
    "This documentation lists the **base URL**, **path** (path template",
    "when the path contains templated variables, e.g. `{{lang}}/goalie/{{report}}`),",
    "**path parameters** (when the path is templated), and documented",
    "**query parameters** (name, variable type). These metadata were parsed",
    "directly from the `application.wadl` of the corresponding base URL.",
    "Each endpoint is also given a unique `label`. These labels are *not*",
    "a part of the NHL API, and were created through the parsing script",
    "so that each endpoint could have a unique and (relatively) simple ID",
    "when grouped together across the base URLs."
  )

  edge_eps <- endpoints[grepl("^edge", names(endpoints))]
  edge_eps_path <- purrr::imap_chr(edge_eps, "path_template")
  edge_eps_base_url <- purrr::imap_chr(edge_eps, "base_url")
  edge_df <- dplyr::bind_cols(names(edge_eps_path), edge_eps_path, edge_eps_base_url)
  edge_eps_tbl <- knitr::kable(edge_df, format = "pipe", col.names = c("Label", "Path", "Base URL"))
  md_intro3 <- glue::glue(.sep = " ",
    "These include **{length(edge_eps)}** NHL Edge statistics endpoints",
    "(or, at least the path would suggest that's the case -- I havent't",
    "fully explored these myself just yet). They seem to be all prefixed with",
    "`edge_`:"
  )

  md_intro4 <- glue::glue(.sep = " ",
    "More details on these endpoints (their path parameters, any documented",
    "query parameters), as well as the other 500+ parsed endpoints are found",
    "immediately below, grouped by base URL."
  )

  md_intro_content <- c(
    md_title, "",
    md_TODO_header, "", md_TODO, "",
    md_intro_header, "", md_intro, "", md_intro_tbl, "",
    md_intro2, "", md_intro3, "",
    edge_eps_tbl, "",
    md_intro4
  )

  #--- Table of contents...
  cli::cli_alert_info("Table of contents...")

  base_url_subsec_title <- sub("/$", "", sub("^https://", "", names(endpoint_groups)))
  base_url_anchors <- gsub("[^a-z0-9]", "", tolower(base_url_subsec_title))
  names(base_url_anchors) <-names(base_url_subsec_title) <- names(endpoint_groups)

  md_toc_header <- "## Table of Contents"
  md_toc_body <- paste0(
    1:length(base_url_subsec_title),
    ". [`",
    base_url_subsec_title,
    "`](#",
    base_url_anchors,
    ")"
  )
  md_toc_content <- c(md_toc_header, "", md_toc_body)

  #--- Main body...
  md_body_content <- c()

  for (base_url in names(endpoint_groups)) {
    cli::cli_alert_info("Creating Markdown content for for {cli::col_blue({base_url})}...")

    subsec_title <- base_url_subsec_title[base_url]
    # header_text <- paste0("## `", subsec_title, "` [[link]](", base_url, ")")
    header_text <- paste0("## `", subsec_title, "`")

    md_body_content <- c(md_body_content, header_text, "")

    eps <- endpoint_groups[[base_url]]
    eps <- eps[order(names(eps))] # Alphabetically

    for (ep_name in names(eps)) {
      ep <- eps[[ep_name]]

      # Add a sub-header for the specific endpoint
      md_body_content <- c(md_body_content, paste0("### ", ep$label))
      md_body_content <- c(md_body_content, paste0("**Base URL:** `", ep$base_url, "`"), "")
      md_body_content <- c(md_body_content, paste0("**Path template:** `", ep$path_template, "`"), "")
      md_body_content <- c(md_body_content, paste0("**URL template:** `", ep$url, "`"), "")

      # Function to create a markdown table from a parameters data frame
      .generate_params_table <- function(params) {
        if (is.data.frame(params) && NROW(params) > 0L) {
          # Filter out any rows that consist entirely of NA values. This can happen
          # when jsonlite parses an object with null values, e.g., {"name": null}
          params_clean <- params[rowSums(is.na(params)) != ncol(params), ]
          if (nrow(params_clean) > 0L) {
            return(knitr::kable(params_clean, format = "pipe", row.names = FALSE))
          }
        }
        # If no valid parameters, return NULL
        return (NULL)
      }

      # Add path params table
      path_params_tbl <- .generate_params_table(ep$path_params)
      path_params_sec <- if (is.null(path_params_tbl)) {
        "**Path parameters:** (none)" # Appear on the same line if "(none)"
      } else {
        c("**Path parameters:**", path_params_tbl)
      }
      md_body_content <- c(md_body_content, path_params_sec, "")

      # Add query params table
      query_params_tbl <- .generate_params_table(ep$query_params)
      query_params_sec <- if (is.null(query_params_tbl)) {
        "**Query parameters (documented):** (none)" # Appear on the same line if "(none)"
      } else {
        c("**Query parameters (documented):**", query_params_tbl)
      }
      md_body_content <- c(md_body_content, query_params_sec)

      # Line for visual separation
      md_body_content <- c(md_body_content, "", "---", "")
    }
    md_body_content <- c(md_body_content, "***", "")
  }

  cli::cli_alert_success("Generated markdown content")

  #----- Saving
  cli::cli_h2("Saving to disk")

  cli::cli_alert_info("Writing documentation to {.path {destfile}}...")

  md_content <- c(md_intro_content, "", md_toc_content, "", md_body_content)
  writeLines(md_content, destfile)
  cli::cli_alert_success("Done!")

  cli::cli_h1("{format(Sys.time())} :: End README generation")
}


