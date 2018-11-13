library(tidyverse)
library(nycflights13)

arrange(flights, air_time)
View(arrange(flights, air_time))

arrange(flights, air_time, dep_delay)
View(arrange(flights, air_time, dep_delay))

arrange(flights, air_time, desc(dep_delay))
arrange(flights, air_time, -dep_delay)

as.data.frame(arrange(flights, air_time, -dep_delay))
