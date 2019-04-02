library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights %>%
  ggplot(aes(x = carrier)) +
  geom_bar()

flights %>%
  ggplot(aes(x = carrier)) +
  geom_bar() +
  facet_wrap(~month)

plot_fun <- function(data) {
  data %>%
    ggplot(aes(x = carrier)) +
    geom_bar() +
    facet_wrap(~month)
}

plot_fun(flights)

flights %>%
  group_by(month) %>%
  summarize(
    plot = list(plot_fun(tibble(carrier)))
  ) %>%
  ungroup()
