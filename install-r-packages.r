# I know it's not very R like to call install lots of times rather than building a list wrapping with lapply
# But, makes it easier to scan and see what you're getting and to add comments to each line for wierd stuff.

#IMPORTANT: Anaconda is a re-req so install that first. 
# https://www.anaconda.com/download/
# I generally test with Microsoft R Open https://mran.microsoft.com/download

# Does machine have a GPU. If you do then you'll need to install CUDA/OpenCL seperately
hasGPU <- FALSE

#Wrapper for readability
install.packages("pacman")
pacman::p_update()
i.p <- pacman::p_install #TODO: Flesh this out a bit so it builds and emits a list of packages installed with Google search URLs

#Useful for installing stuff that isn't in CRAN/MRAN and building stuff
i.p("devtools")
i.p("testthat")
i.p("curl")
i.p("httr")
i.p("roxygen2")
i.p("XML")


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
i.p("microbenchmark")
i.p("fst")
i.p("janitor")
i.p("rio")

#timeseries
i.p("zoo")
i.p("xts")
i.p("forecast")
i.p("dygraphs")

#Charts and markdown
i.p("knitr")
i.p("rmarkdown")
i.p("shiny")
i.p("ggvis")
i.p("rgl")
i.p("htmlwidgets")
i.p("DT")
i.p("diagrammeR ")
i.p("network3D")
i.p("threJS")
i.p("googleVis")
i.p("xtable")
i.p("corrplot")

#Mapping
i.p("leaflet")
i.p("sp")
i.p("maptools")
i.p("maps")
i.p("ggmap")


#Quant
i.p("quantmod")
i.p("PortfolioAnalytics")

#ML
i.p("xgboost") # TODO: http://xgboost.readthedocs.io/en/latest/build.html#installing-r-package-with-gpu-support
devtools::install_github("Laurae2/lgbdl")
library(lgbdl)
lgb.dl(commit = "master",
       compiler = "gcc",
       repo = "https://github.com/Microsoft/LightGBM",
       cores = 4,
       use_gpu = hasGPU)
devtools::install_github('catboost/catboost', subdir = 'catboost/R-package')

devtools::install_github("rstudio/keras")
library(keras)
ifelse(hasGPU,install_keras(method="conda", tensorflow = "gpu"),install_keras(method="conda"))

install.packages("caret")
i.p("mlr")
