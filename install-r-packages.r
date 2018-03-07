# I know it's not very R like to call install lots of times rather than building a list wrapping with lapply
# But, makes it easier to scan and see what you're getting and to add comments to each line for wierd stuff.

#Wrapper for readability
i.p <- install.packages #TODO: Flesh this out a bit so it builds and emits a list of packages installed with Google search URLs


#Useful for installing stuff that isn't in CRAN and building stuff
i.p("devtools")
i.p("roxygen2")i.p("quantmod")
i.p("testthat")

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
i.p("quantstrat")
i.p("PortfolioAnalytics")

#ML
i.p("xgboost") # http://xgboost.readthedocs.io/en/latest/build.html#installing-r-package-with-gpu-support
install_github("Microsoft/LightGBM", subdir = "R-package") # GPU support here: https://github.com/Microsoft/LightGBM/tree/master/R-package 

#Graphics


#install.packages(c("remotes","readxl","googlesheets","haven", "readr", "rio", "Hmisc", "sqldf", 
#                   "jsonlite", "XML", "httr", "quantmod", "tidyquant", 
##                   "rvest", "dplyr", "purrr", "reshape2", "tidyr", 
#                   "magrittr", "validate", "testthat", "data.table", "stringr", "lubridate", "zoo", "editR", "knitr", "officer", 
#                   "listviewer", "DT", "ggplot2", "ggiraph", "dygraphs", "googleVis", "metricsgraphics", "RColorBrewer", 
#                   "sf", "leaflet", "ggmap", "tmap", "tmaptools", "mapsapi", "tidycensus", "glue", "rga", 
#                   "RSiteCatalyst", "roxygen2", "shiny", "flexdashboard", "openxlsx", "gmodels", "janitor", "car", 
#                   "rcdimple", "foreach", "scales", "plotly", "highcharter", "profvis", "tidytext", "diffobj", "Prophet", 
#                   "feather", "fst", "googleAuthR", "cloudyR"))