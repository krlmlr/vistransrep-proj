library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


table2 %>%
  xtabs(count ~ ., .) %>%
  ftable()

# gt package

?`tidyr-package`
