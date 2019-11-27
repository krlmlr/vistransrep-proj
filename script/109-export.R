### Export & saving

library(tidyverse)

## create plot for export
ggplot(mtcars, aes(mpg, wt)) +
  geom_point()

# show exporting
ggsave("mtcars.pdf")
ggsave("mtcars.png")

file.remove(c("mtcars.pdf", "mtcars.png"))

# show how base plot exporting works
## png("Plot.png")
## plot(mpg$displ, mpg$hwy)
## dev.off()

# show how ggplot exporting works
## ggplot(mpg, aes(disply, hwy)) +
##   geom_point()
## ggsave("Plot.png")

# ggplot plots can be stored in R objects
p <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()

# saved ggplot objects can be used later on
p + geom_point(aes(color = class))

# print the ggplot obj
print(p)

# look at ggplot2 obj structure
str(p)
