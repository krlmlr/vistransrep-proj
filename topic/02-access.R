library(tidyverse)

force_left_join <- function(x, y, by) {
  names_to_keep <-
    c(by, setdiff(names(y), names(x)))

  if (length(names_to_keep) != length(names)) {
  y_keep <-
    y %>%
    select(!!!names_to_keep)
  } else {
    y_keep <- y
  }

  left_join(x, y, by)
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

  reduce(datasets, force_left_join, by = "id")
}

mpg_topics("socio")
mpg_topics("rest")
mpg_topics("rest", "socio")
mpg_topics()
