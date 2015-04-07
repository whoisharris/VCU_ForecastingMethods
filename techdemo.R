# the documentation for the R/CRAN 'forecast' package can be found here:
# http://cran.r-project.org/web/packages/forecast/forecast.pdf
install.packages("forecast") # install the packages you're intending to use
library(forecast) # utilize the library you've installed; necessary for use of 'forecast' package
getwd() # get the working directory for the version of R that you're using
setwd("use/the/directory/where/you/have/your/data") # set the working directory to location where data files are stores
appl_ds <- read.csv("aapl.csv") # instantiate the data file as an object in R
str(aapl_ds) # outputs basics on the variables such as type, # of observations and several sample outputs
aapl <- aapl_ds$close # create a new variable for ease of use
str(aapl) # again, outputs associated with the single variable
summary(aapl) # descriptives regarding all observations for this variable
appl_fit <- HoltWinters(aapl,gamma=FALSE) # "returns forecasts and other information for univariate Holt-Winters time series models"
plot(forecast(appl_fit)) # plot the holt-winters model
