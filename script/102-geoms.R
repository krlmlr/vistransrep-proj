### `geom_*` functions

library(tidyverse)

## ggplot(data, mapping = aes(), ...) +
##   geom_XXX(mapping = NULL, data = NULL, stat, ...)


## geom_point(mapping = NULL, data = NULL, stat = "identity",
##   position = "identity", ..., na.rm = FALSE, show.legend = NA,
##   inherit.aes = TRUE)
## 
## geom_boxplot(mapping = NULL, data = NULL, stat = "boxplot",
##   position = "dodge2", ..., outlier.colour = NULL,
##   outlier.color = NULL, outlier.fill = NULL, outlier.shape = 19,
##   outlier.size = 1.5, outlier.stroke = 0.5, outlier.alpha = NULL,
##   notch = FALSE, notchwidth = 0.5, varwidth = FALSE, na.rm = FALSE,
##   show.legend = NA, inherit.aes = TRUE)

# geom_boxplot needs a factor var
class(mpg$class)

# show geom_boxplot
ggplot(mpg, aes(x = class, y = displ)) +
  geom_boxplot()

# combining multiple geoms
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm")
