library(tidyverse)

force_left_join <- function(x, y, by) {
  names_to_keep <-
    intersect(names(x), names(y))

}

mpg_topics <- function(...) {
  files <- c(...)
  root <- "/cloud/project/topic"

  if (length(files) == 0) {
    paths <- dir(root, pattern = "\\.rds$", full.names = TRUE)
  } else {
    paths <- file.path(
      root,
      paste0("mpg-", files, ".rds")
    )
  }

  datasets <-
    map(paths, readRDS)

  reduce(datasets, left_join, by = "id")
}

mpg_topics("socio")
mpg_topics("rest")
mpg_topics("rest", "socio")
mpg_topics()
