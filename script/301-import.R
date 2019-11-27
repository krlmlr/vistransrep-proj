### Import single files

library(tidyverse)
library(readr)

# Import one single file
example1 <-
  read_delim(
    "data/example1.csv",
    ";",
    escape_double = FALSE, trim_ws = TRUE
  )

# View the result
view(example1)
