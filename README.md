# Data Processing, Visualisation and Reporting using R

RStudio project and supporting files for a quick start of the workshop.


## Installing R and RStudio

Ideally you can install and use R on your local machine.
However, we have experienced various problems in the past.
For this reason we also provide an installation that you can run from your browser.
Both setups are described below.

If you have full control over your computer (e.g. your private laptop), you should be able to work with a local install.
If your computer is administrated by somebody else (e.g. a laptop provided by your employer), several things can go wrong:

- Latest version of R and/or RStudio not available
- No modern browser available
- Trouble connecting to the internet

We recommend that you use a computer where you have full control.
If this is not possible, please double-check before the workshop that the cloud installation works for you.

Unfortunately we cannot help you troubleshoot problems with your system setup during the workshop.

### Local installation

Works best for computers where you have full control.

Required software:

1. R, preferably in the most recent version (3.6.1)

    - Windows: https://cran.r-project.org/bin/windows/base/
    - Mac OS: https://cran.r-project.org/bin/macosx/
    - Linux: Use your system's package manager, or https://cran.r-project.org/bin/linux/

2. RStudio, preferably in the most recent version (1.2.5001)

    https://www.rstudio.com/products/rstudio/download/#download

3. R packages. Copy the following code at once into RStudio's "Console" pane and press "Enter".

    ```r
    install.packages(c(
      "tidyverse", "nycflights13", "shiny", "here", "xaringan", "rticles", "conflicted",
      "leaflet", "plotly", "pxR", "rio", "bookdown", "ggpubr"
    ))
    ```

4. To test the installation, type `library(tidyverse)` (enter) in the console tab. You should see output similar to the following:

    ```
    > library(tidyverse)
    ── Attaching packages ─────────────────────────────────── tidyverse 1.2.1 ──
    ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
    ✔ tibble  2.1.3     ✔ dplyr   0.8.3
    ✔ tidyr   1.0.0     ✔ stringr 1.4.0
    ✔ readr   1.3.1     ✔ forcats 0.4.0
    ── Conflicts ────────────────────────────────────── tidyverse_conflicts() ──
    ✖ tidyr::extract()   masks magrittr::extract()
    ✖ dplyr::filter()    masks stats::filter()
    ✖ dplyr::lag()       masks stats::lag()
    ✖ purrr::set_names() masks magrittr::set_names()
    ```


## Cloud instance

Works for most computers, requires internet access.

The cloud instance is an RStudio IDE that works from your browser, with R and all packages preinstalled.
It should work reasonably well in a modern browser (Chrome or Firefox) on any operating system.

1. Navigate to https://rstudio.cloud/project/717233. (Please use a modern browser, Firefox or Chrome should work reasonably well.)
    - A login page appears.
1. To create an account, please click the "Sign up" link at the bottom right of the sign in page. (You can also sign in with a GitHub or Google account.)
1. After signing in, please wait for a few seconds for the project to open.
1. In the "Console" tab, type: `library(tidyverse)` (enter). You should see output similar to the following:

    ```
    > library(tidyverse)
    ── Attaching packages ─────────────────────────────────── tidyverse 1.2.1 ──
    ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
    ✔ tibble  2.1.3     ✔ dplyr   0.8.3
    ✔ tidyr   1.0.0     ✔ stringr 1.4.0
    ✔ readr   1.3.1     ✔ forcats 0.4.0
    ── Conflicts ────────────────────────────────────── tidyverse_conflicts() ──
    ✖ tidyr::extract()   masks magrittr::extract()
    ✖ dplyr::filter()    masks stats::filter()
    ✖ dplyr::lag()       masks stats::lag()
    ✖ purrr::set_names() masks magrittr::set_names()
    ```


## Workshop material

To be announced.
