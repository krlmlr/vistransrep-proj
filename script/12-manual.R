### Tweaks and tricks

library(tidyverse)

# chose color in geom
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "red"
  )

# different color 1
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "blue"
  )

# different color 2
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "green"
  )

# color as 3rd aesthetic
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point()

# point shape as 3rd aesthetic
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    shape = class
  )
) +
  geom_point()

# shape mapped on drv
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    shape = drv
  )
) +
  geom_point()

# point size as 3rd aesthetic
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    size = cty
  )
) +
  geom_point()

# mix to increase num of aesthetics
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = class,
    size = cty
  )
) +
  geom_point()

# unquoted col in aes()
try(
  ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = blue
  )
) +
  geom_point()
)

# mpg quoted and unquoted
mpg
"mpg"

# quoted color in aes()
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = "blue"
  )
) +
  geom_point()

# semi-transparency
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(alpha = 0.2)

# function of variables in aes()
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = 2.35 / hwy
  )
) +
  geom_point()

# color in geom()
try(
  ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = 2.35 / hwy
  )
) +
  geom_point(color = class)
)
