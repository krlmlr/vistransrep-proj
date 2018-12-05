library(tidyverse)

ggplot(data = mpg) +
  geom_histogram(
    mapping = aes(x = hwy, fill = drv),
    binwidth = 1,
    alpha = 0.2
  )

ggplot(data = mpg) +
  geom_histogram(
    mapping = aes(x = hwy, fill = drv),
    binwidth = 1,
    position = "dodge"
  )

?geom_jitter

?geom_point


ggplot(data = mpg) +
  geom_bar(
    mapping = aes(x = class, fill = drv),
    position = "fill"
  )

ggplot(data = mpg) +
  geom_bar(
    mapping = aes(x = class, fill = drv),
    position = "dodge"
  )

ggplot(data = mpg) +
  geom_bar(
    mapping = aes(x = class, fill = drv),
    position = position_dodge(preserve = "single")
  )
