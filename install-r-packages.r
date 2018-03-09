# I know it's not very R like to call install lots of times rather than building a list wrapping with lapply
# But, makes it easier to scan and see what you're getting and to add comments to each line for wierd stuff.

#Wrapper for readability
i.p <- require #TODO: Flesh this out a bit so it builds and emits a list of packages installed with Google search URLs


#Useful for installing stuff that isn't in CRAN and building stuff
i.p("devtools")
i.p("testthat")
i.p("curl")
i.p("httr")

#Tidyverse
i.p("tidyverse")

#Essentials
i.p("data.table")
i.p("lubridate")
i.p("jsonlite")
i.p("XML")
i.p("zoo")
i.p("foreach")
i.p("feather")
i.p("DescTools")

#Charts and markdown
i.p("knitr")

#Quant
i.p("quantmod")
i.p("PortfolioAnalytics")

#ML
set_config(config(ssl_verifypeer = 0L))
i.p("xgboost") # http://xgboost.readthedocs.io/en/latest/build.html#installing-r-package-with-gpu-support
devtools::install_github("Laurae2/lgbdl")
library(lgbdl)
lgb.dl.fixed(commit = "master",
       compiler = "gcc",
       repo = "https://github.com/Microsoft/LightGBM",
       cores = 4,
       use_gpu = TRUE)
devtools::install_github('catboost/catboost', subdir = 'catboost/R-package')
