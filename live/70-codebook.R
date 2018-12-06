library(tidyverse)

mpg %>%
  memisc::codebook() %>%
  memisc::show_html()
