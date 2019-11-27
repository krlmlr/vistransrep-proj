### Facetting

library(tidyverse)
library(ggsci)
library(ggpubr)
theme_set(theme_pubr())

## facet_grid(facets = vars(<variable>),
##            scales = "fixed",
##            ...)
## 
## facet_wrap(rows = vars(<variable>),
##            cols = vars(<variable>),
##            scales = "fixed",
##            ...)

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = fl)) +
  scale_color_nejm() +
  facet_grid(vars(), vars(year))

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = fl)) +
  scale_color_nejm() +
  facet_grid(vars(year), vars()) 

mpg %>% 
  mutate(manufacturer = as.factor(manufacturer)) %>% 
  mutate(year = as.factor(year)) %>% 
  ggplot(aes(displ, hwy)) +
  geom_point() +
  facet_wrap(vars(manufacturer:year))

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(vars(manufacturer, year))

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class)) +
  facet_grid(vars(year), vars(cyl))

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class)) +
  facet_wrap(vars(year, cyl))

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(vars(year), vars(cyl), scales = "free_x") +
  theme_pubr(base_size = 7)

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(vars(), vars(cyl), labeller = label_both)
