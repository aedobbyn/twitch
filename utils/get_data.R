
get_data <- function(from_file = TRUE) {
  if (from_file == TRUE) {
    fortnite_raw <<- read_feather(here("data", "raw", "fortnite_raw.feather"))
  } else {
    source(here("munge", "grab_dat.R"))
  }
}