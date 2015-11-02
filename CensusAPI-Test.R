install.packages("jsonlite", repos="http://cran.r-project.org")
library(jsonlite)
install.packages("RCurl", repos="http://cran.r-project.org")
library(RCurl)
key <- "f1390e1535e269e72084cae2bfc5253851a5a0c7"
acsmeasures <- c("B25003_001E", 
                 "B25101_006E", 
                 "B25106_028E", 
                 "B25077_001E", 
                 "B25111_001E", 
                 "B08136_001E", 
                 "B08136_007E",
                 "B17001_002E",
                 "B19013_001E", 
                 "B23025_002E",
                 "B15003_023E")
urlbase <- ("http://api.census.gov/data")
acsyears <-2005:2014
oneyear <- c(1,1,1,1,1,1,1,1,1,1)
threeyear <- c(0,0,1,1,1,1,1,1,1,0)
fiveyear <- c(0,0,0,0,1,1,1,1,1,0)
acsdata <- data.frame(oneyear, 
                      threeyear, 
                      fiveyear, 
                      row.names = acsyears)
urlquery <- paste0(urlbase,"/",acsyears[7],
                   "/acs5?get=NAME,"
                   ,acsmeasures[1],
                   "&for=state:22&key="
                   ,key, collapse =" ")
output <- getURLContent(urlquery)
formated <- fromJSON(output)
