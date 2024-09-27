# Use {pacman} to install all the required packages and avoid {renv}
if (!require("pacman")) {
  install.packages("pacman")
  library(pacman)
}

pacman:::p_set_cranrepo("https://packagemanager.posit.co/cran/latest")

p_load("renv")

# Find all the pacakges used in the project
pkgs <- renv::dependencies()$Package |>
  unique() |>
  (\(x) x[!x %in% c(
    "base", "cmdstanr",
    "modelsummary", "tinytable", "insight", "performance", "parameters"
  )])()

# Install all packages and their dependencies
pacman::p_load(char = pkgs, update = TRUE)

# Install cmdstanr
install.packages("cmdstanr", repos = c("https://stan-dev.r-universe.dev", getOption("repos")))
cmdstanr::install_cmdstan()

# Install development version things
install.packages(
  c("modelsummary", "tinytable", "insight", "performance", "parameters"),
  repos = c(
    "https://vincentarelbundock.r-universe.dev",
    "https://easystats.r-universe.dev"
  )
)
