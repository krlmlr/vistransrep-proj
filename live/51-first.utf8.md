---
title: "My rmarkdown document"
author: "Kirill Müller"
date: "2019-04-02"
output:
  html_document:
    toc: true
    number_sections: true
---





# R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

- Bullet

- points

1. One

2. Two

3. Three

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:





```r
flights_per_month %>% 
  ggplot(aes(x = factor(month), y = n)) +
  geom_col() +
  labs(
    x = "Month",
    y = "Number of flights",
    title = "Flights per month",
    subtitle = "Across all airlines"
  )
```

<img src="51-first_files/figure-html/flights-1.png" width="672" />

## Including Plots


You can also embed plots, for example:

<img src="51-first_files/figure-html/pressure-1.png" width="672" />

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

$$\sqrt{\sum_1^5{x_i}}$$


```r
table1 %>% 
  knitr::kable()
```



country        year    cases   population
------------  -----  -------  -----------
Afghanistan    1999      745     19987071
Afghanistan    2000     2666     20595360
Brazil         1999    37737    172006362
Brazil         2000    80488    174504898
China          1999   212258   1272915272
China          2000   213766   1280428583



```r
table1 %>% 
  DT::datatable()
```

preserve1e29b8f66a9e83d8
