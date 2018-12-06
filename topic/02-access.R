library(tidyverse)

mpg_topics <- function(...) {
  files <- c(...)
  root <- "/cloud/project/topic"

  if (length(files) == 0) {
    dir(root, pattern = "\\.rds$", full.names = TRUE)
  } else {
    paths <- file.path(
      root,
      paste0("mpg-", files, ".rds")
    )
  }

  datasets <-
    map(paths, readRDS)

  reduce(datasets, left_join)
}

mpg_topics("socio")
