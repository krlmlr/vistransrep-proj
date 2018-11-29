library(tidyverse)

ggplot(data = mpg, mapping = aes(x = class, fill = drv)) +
  geom_bar()

ggplot(data = mpg, mapping = aes(x = class, fill = drv)) +
  geom_bar(position = "dodge")

ggplot(data = mpg, mapping = aes(x = class, fill = drv)) +
  geom_bar(position = "fill")

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(position = "jitter")

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_jitter()
