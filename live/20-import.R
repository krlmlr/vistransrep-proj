library(readr)
example1 <- read_delim(
  "data/example1.csv",
  ";", escape_double = FALSE, trim_ws = TRUE
)
View(example1)

example1 <- read.csv(
  "~/git/R/vistransrep-proj/data/example1.csv",
  header=FALSE,
  sep=";"
)
