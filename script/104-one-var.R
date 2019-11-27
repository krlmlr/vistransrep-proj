### One variable plots

library(tidyverse)

# Continuous variables: histogram most common
ggplot(mpg, aes(x = hwy)) +
  geom_histogram()

# showcase: density
ggplot(mpg, aes(x = hwy)) +
  geom_density()

# example for discrete var: barplot
ggplot(mpg, aes(fl)) +
  geom_bar()

# Exercise
browseURL("https://krlmlr.github.io/vistransrep/2019-11-zhr/scatter.html")
