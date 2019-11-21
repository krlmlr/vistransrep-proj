### Statistical summaries

library(tidyverse)

# geom_bar() for counting unique values
ggplot(
  data = mpg,
  mapping = aes(x = class)
) +
  geom_bar()

# geom_histogram() for counting values in bins
ggplot(
  data = mpg,
  mapping = aes(x = hwy)
) +
  geom_histogram(bins = 20)

# geom_boxplot() for another way of summarizing numeric values
ggplot(
  data = mpg,
  mapping = aes(y = hwy)
) +
  geom_boxplot()

# x-axis in geom_boxplot() to go into detail
ggplot(
  data = mpg,
  mapping = aes(x = class, y = hwy)
) +
  geom_boxplot()

# geom_smooth() for drawing a smooth curve through scatter plot
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  geom_smooth()
