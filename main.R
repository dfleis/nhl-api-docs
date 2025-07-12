################################################################################
# run.R
#
################################################################################
local({
  pkgs <- c(
    "cli",       # Pretty CLI
    "checkmate", # Object validation
    "dplyr",     # Data manipulation
    "fs",        # File system operations (path parsing)
    "httr2",     # HTTP requests
    "jsonlite",  # Read/writing JSON
    "knitr",     # Creating the final README.md
    "lobstr",    # Object size
    "optparse",  # Command args
    "purrr",     # Functional programming tools
    "R6",        # Stateful objects
    "rlang",     # A whole bunch of useful base-R extensions
    "stringr",   # Parsing strings
    "xml2",      # Parsing XMLs
    "yaml"       # Read/writing YMLs
  )

  cli::cli_inform(c(
    "i" = "Loading required packages:",
    " " = "{.pkg {pkgs}}"
  ))

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

#--------------------------------------------------
#----- Start
#--------------------------------------------------
cli::cli_h1("{format(Sys.time())} :: Start wadlR")

#----- Load config, utils
cli::cli_h2("Loading config, utils")
config <- yaml::read_yaml("_config.yml")
invisible(lapply(list.files(config$dirs$scripts, full.names = TRUE), source))
cli::cli_alert_success("Helpers loaded.")

# Set default arguments, and parse any command args if called from Rscript
args <- parse_cli_args(config$args$cli_defaults)

#----- Download
cli::cli_h2("Downloading WADLs")
wadl_paths <- download_wadls(
  sources = config$sources,
  dest_dir = config$dirs$wadl_dest_dir
)

#----- Parse
cli::cli_h2("Parsing WADLs")
endpoints_raw <- parse_wadls(wadl_paths)

if (isTRUE(args$save_raw)) {
  save_data_as(endpoints_raw, dest_file = config$paths$eps_raw)
}

#----- Combine
endpoints_all <- purrr::list_flatten(endpoints_raw)

#----- Create final `ENDPOINTS` list
cli::cli_h2("Labeling metadata")
cli::cli_alert_info("Generating final endpoint metadata list...")

registry <- EndpointRegistry$new(endpoints_all)
ENDPOINTS <- registry$generate_metadata()

cli::cli_text()
cli::cli_alert_success(paste(
  "Endpoint metadata successfully cleaned and labelled:",
  "A {.cls {class(ENDPOINTS)[1]}} containing",
  "{col_yellow(length(ENDPOINTS))} endpoint definitions",
  "({col_yellow(format(lobstr::obj_sizes(ENDPOINTS)))})"
))
cli::cli_text()

# #----- Save into internal package data
cli::cli_h2("Saving metadata")
# usethis::use_data(ENDPOINTS, internal = TRUE, overwrite = args$overwrite_sysdata)

# This is a hack to get around jsonlite::toJSON from dropping column names
# on data frames with 0 rows.  Another option would be to save with
# `dataframe = "columns"`, but doing so makes it a pain to load back into R
# since each column will be loaded-in and interpreted as a list by default.
ENDPOINTS_json <- lapply(ENDPOINTS, function(ep) {
  lapply(ep, function(field) {
    if (is.data.frame(field) && nrow(field) == 0L) {
      field <- lapply(as.list(field), function(var) if (length(var) == 0L) NULL else var)
      # field <- as.list(field)
    }
    field
  })
})

save_data_as(
  object = ENDPOINTS,
  dest_file = config$paths$final,
  type = "rds"
)

save_data_as(
  object = ENDPOINTS_json,
  dest_file = config$paths$final,
  na = "string",
  null = "null",
  type = "json"
)

cli::cli_text(); cli::cli_alert_success("Done!")
cli::cli_h1("{format(Sys.time())} :: End wadlR")

#----- Generate README.md
make_readme(
  endpoints_rds = fs::path_ext_set(config$paths$final, "rds"),
  destfile = config$paths$readme
)


