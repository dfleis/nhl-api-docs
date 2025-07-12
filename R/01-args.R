# 01-args.R
# If run from a CLI, e.g. Rscript through a terminal session, then this will
# parse CLI args passed to Rscript that match the correct/expected arg flags.
# If no command args are found then we revert to the defaults. If the file is
# run from an interactive session, e.g. a standard RStudio session, then the
# function simply returns its inputs.

parse_cli_args <- function(arg_defaults) {

  .parse_bool <- function(option, opt_str, value, parser) {
    val <- tolower(as.character(value))

    if (isTRUE(val %in% c("true", "t", "1"))) return (TRUE)
    else if (isTRUE(val %in% c("false", "f", "0"))) return (FALSE)

    all_flags <- c(option@short_flag, option@long_flag)

    cl <- class(value)
    cli::cli_abort(paste(
      "Invalid value parsed for option {.or {all_flags}}.",
      "\n  Received value {cli::col_red(val)} of type {.cls {cl}}, which is",
      "not a recognized boolean (e.g., TRUE/FALSE, 1/0, T/F)."
    ))
  }

  args <- arg_defaults

  if (!isTRUE(interactive())) { # Script called from Rscript/terminal session
    opt_overwrite <- optparse::make_option(
      opt_str  = c("-o", "--overwrite_sysdata"),
      type     = "character",
      default  = arg_defaults$overwrite_sysdata,
      help     = "Overwrite internal sysdata [default: %default]",
      callback = .parse_bool
    )
    opt_quietly <- optparse::make_option(
      opt_str  = c("-q", "--register_quietly"),
      type     = "character",
      default  = arg_defaults$register_quietly,
      help     = "Suppress registration messages [default: %default]",
      callback = .parse_bool
    )
    opt_save_raw <- optparse::make_option(
      opt_str  = c("-s", "--save_raw"),
      type     = "character",
      default  = arg_defaults$save_raw,
      help     = "Save raw WADL parses to file [default: %default]",
      callback = .parse_bool
    )
    opt_list <- list(opt_overwrite, opt_quietly, opt_save_raw)

    opts <- optparse::parse_args(optparse::OptionParser(option_list = opt_list))

    args$overwrite_sysdata <- opts$overwrite_sysdata
    args$register_quietly  <- opts$register_quietly
    args$save_raw          <- opts$save_raw
  }

  cli::cli_alert_info("Running with arguments:")
  cli::cli_div(theme = list( # Open div to start a temp theme for the body
    span.dt = list(prefix = "\u00a0\u00a0"),
    span.dd = list(color = "blue")
  ))
  cli::cli_dl(args)
  cli::cli_end() # Close div

  args
}
