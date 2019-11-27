### Labels

library(tidyverse)

# showcase geom_text()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(label = "A")

# object vs string again
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(label = "drv")

# dynamic labeling to variable
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(aes(label = drv))

# points and labels overplotting
# only geom_text() supports label arg
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  geom_text(aes(label = drv))

# aesthetic changes to distinguish better
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(color = "blue") +
  geom_text(aes(label = drv), size = 10)
