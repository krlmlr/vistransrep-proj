library(tidyverse)

mpg_topics <- function(...) {
  files <- c(...)
  if (length(files) == 0) {
  }

  paths <- file.path(
    "/cloud/project/topic",
    paste0("mpg-", files, ".rds")
  )

  datasets <-
    map(paths, readRDS)

  reduce(datasets, left_join)
}

mpg_topics("socio")
