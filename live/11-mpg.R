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
