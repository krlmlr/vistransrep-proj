library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


table2 %>%
  xtabs(count ~ ., .) %>%
  ftable()

table2 %>%
  xtabs(count ~ ., .) %>%
  ftable(col.vars = c("year", "type"))

# gt package

# reporttools package

?`tidyr-package`

# https://tidyr.tidyverse.org/
