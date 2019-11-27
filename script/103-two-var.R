### Two variable plots

library(tidyverse)

# Continuous X and Y
ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()

# Discrete X and continuous Y
ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot()

# Discrete X and Y
ggplot(mpg, aes(x = class, y = manufacturer)) +
  geom_jitter()
