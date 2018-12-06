library(tidyverse)

mpg %>%
  memisc::codebook() %>%
  memisc::show_html()

# example original data set for which a dictionary will be made
data("esoph")
my.data <- esoph

# Add description for each variable names and variable type
variable_description <- c("age group", "alcohol consumption", "tobacco consumption",
                          "number of cases", "number of controls")

variable_type <- c(0, 0, 0, 0, 0)

linker <- build_linker(my.data = my.data, variable_description = variable_description,
                       variable_type = variable_type)
linker

## Not run:
variable_description <- c("age group", "alcohol consumption", "tobacco consumption",
                          "number of cases", "number of controls")
variable_type <- c(0, 2, 0, 0, 0)
linker <- build_linker(my.data = my.data, variable_description = variable_description,
                       variable_type = variable_type)
linker
