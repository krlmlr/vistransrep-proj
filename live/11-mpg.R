library(tidyverse)

# # One time:
# install.packages("tidyverse")

# Empty graph
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
)

# Scatterplot
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = cyl, y = hwy)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = hwy, y = cty)
) +
  geom_point()
