library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Bar plot: flights per carrier
flights %>%
  ggplot(aes(x = carrier)) +
  geom_bar()

# Bar plot: flights per carrier, one facet per month
flights %>%
  ggplot(aes(x = carrier)) +
  geom_bar() +
  facet_wrap(~month)

# Extract a function
plot_fun <- function(data) {
  data %>%
    ggplot(aes(x = carrier)) +
    geom_bar() +
    facet_wrap(~month)
}

plot_fun(flights)

# Call this function for each subgroup
flights %>%
  group_by(month) %>%
  summarize(
    plot = list(plot_fun(tibble(carrier)))
  ) %>%
  ungroup()
