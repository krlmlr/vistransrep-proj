### Colors and shape

library(tidyverse)

# static color: blue
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "blue"
  )

# dynamic color: variable mapping discrete
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class))

# dynamic color: variable mapping cont.
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = cty))

# shape
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(aes(shape = fl))

# dynamic: combining color and shape
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
  )
) +
  geom_point(aes(color = class, shape = drv))

# dynamic: size
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(aes(size = cty))

# sometimes less is more...
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(aes(
    color = class,
    size = cty
  ))

# transparency: alpha
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(alpha = 0.2)

# what can go wrong
try(print(
  ggplot(
    data = mpg,
    mapping = aes(
      x = displ,
      y = hwy,
      color = blue
    )
  ) +
    geom_point()
))

# quoted and unquoted
mpg
"mpg"

# what happens with strings in aes()
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(aes(color = "blue"))

# map static colors outside of aes()
ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(
    color = "blue"
  )

# Exercises
browseURL("https://krlmlr.github.io/vistransrep/2019-11-zhr/scatter3.html")
