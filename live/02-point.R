library(tidyverse)

ggplot(mpg, aes(displ, hwy)) +
  geom_point()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()

ggplot(mpg, aes(displ, hwy)) +
  geom_line()

ggplot(mpg, aes(displ, hwy)) +
  geom_path()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_text(mapping = aes(label = model))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_text(mapping = aes(label = model))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(color = "blue") +
  geom_text(mapping = aes(label = model))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(color = "blue") +
  geom_text(mapping = aes(label = model)) +
  xlab("Displacement")

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(color = "blue") +
  geom_text(mapping = aes(label = model)) +
  scale_x_continuous(name = "Displacement")

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_jitter()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(alpha = 0.3)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_bin2d()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = drv, y = hwy)) +
  geom_boxplot()

ggplot(data = mpg, mapping = aes(x = drv, y = hwy)) +
  stat_boxplot() +
  scale_y_log10()


ggplot(data = mpg, mapping = aes(x = drv, y = hwy)) +
  stat_boxplot() +
  coord_trans(y = "log10")

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_bin2d() +
  scale_x_log10() +
  scale_y_log10()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_bin2d() +
  coord_trans(x = "log10", y = "log10")

ggplot(data = mpg, mapping = aes(x = drv, y = hwy)) +
  geom_boxplot()

ggplot(data = mpg, mapping = aes(x = drv)) +
  geom_bar()
#
# ggplot(data = mpg, mapping = aes(x = drv)) +
#   geom_col()
