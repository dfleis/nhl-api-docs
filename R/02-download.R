# 02-download.R

#--- Core functionality
.download_wadl <- function(url, target_dir, target_basename = "application.wadl") {
  dir.create(target_dir, showWarnings = FALSE, recursive = TRUE)

  if (length(target_basename) == 0L) target_basename <- basename(url)
  target_path <- fs::path(target_dir, target_basename)

  cache_dir <- fs::path_temp("nhl-api-wadl-cache")

  cli::cli_alert_info("Requesting {.url {url}}...")

  httr2::request(url) |>
    httr2::req_cache(path = cache_dir) |>
    httr2::req_perform(path = target_path) |>
    print()

  cli::cli_text()
  return (target_path)
}

#--- Wrapper for all sources
download_wadls <- function(sources, dest_dir, ...) {
  if (!rlang::is_named(sources)) {
    cli::cli_abort(c(
      "x" = "WADL sources {.var sources} must have names.",
      "i" = paste(
        "\u0020Names are used for subdirectory creation under",
        "{.path {dest_dir}} and should be unique to avoid",
        "filename collisions."
      )
    ))
  }

  target_dirs <- fs::path(dest_dir, names(sources))
  wadl_paths <- mapply(
    .download_wadl, url = sources, target_dir = target_dirs, ..., USE.NAMES = TRUE
  )

  cli::cli_alert_success("Downloads complete.")
  return (invisible(wadl_paths))
}
