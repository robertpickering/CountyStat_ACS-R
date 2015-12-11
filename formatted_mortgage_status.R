

#dataframes for 2010

mortgagestatus2010 = t(data.frame(estimate(benchmarks2010[[2]])))

#dataframes for 2011

mortgagestatus2011 = t(data.frame(estimate(benchmarks2011[[2]])))

#dataframes for 2012

mortgagestatus2012 = t(data.frame(estimate(benchmarks2012[[2]])))

#dataframes for 2013

mortgagestatus2013 = t(data.frame(estimate(benchmarks2013[[2]])))

#dataframes for 2014

mortgagestatus2014 = t(data.frame(estimate(benchmarks2014[[2]])))


#combine all into one list
mortgagestatus <- list("2010" = mortgagestatus2010, 
                       "2011" = mortgagestatus2011, 
                       "2012" = mortgagestatus2012, 
                       "2013" = mortgagestatus2013, 
                       "2014" = mortgagestatus2014)

# transform data to include years in first columns

write.csv(mortgagestatus$`2010`, file = "mortgagestatus2010.csv")
mortgagestatus2010 <- data.frame(read.csv("mortgagestatus2010.csv"))
headers <- colnames(mortgagestatus2010)
headers[1] <- "Measures"
colnames(mortgagestatus2010) <-headers
mortgagestatus2010$year<-"2010"
lengthofcolumns <-length(colnames(mortgagestatus2010))
mortgagestatus2010<-mortgagestatus2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mortgagestatus$`2011`, file = "mortgagestatus2011.csv")
mortgagestatus2011 <- data.frame(read.csv("mortgagestatus2011.csv"))
headers <- colnames(mortgagestatus2011)
headers[1] <- "Measures"
colnames(mortgagestatus2011) <-headers
mortgagestatus2011$year<-"2011"
lengthofcolumns <-length(colnames(mortgagestatus2011))
mortgagestatus2011<-mortgagestatus2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mortgagestatus$`2012`, file = "mortgagestatus2012.csv")
mortgagestatus2012 <- data.frame(read.csv("mortgagestatus2012.csv"))
headers <- colnames(mortgagestatus2012)
headers[1] <- "Measures"
colnames(mortgagestatus2012) <-headers
mortgagestatus2012$year<-"2012"
lengthofcolumns <-length(colnames(mortgagestatus2012))
mortgagestatus2012<-mortgagestatus2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mortgagestatus$`2013`, file = "mortgagestatus2013.csv")
mortgagestatus2013 <- data.frame(read.csv("mortgagestatus2013.csv"))
headers <- colnames(mortgagestatus2013)
headers[1] <- "Measures"
colnames(mortgagestatus2013) <-headers
mortgagestatus2013$year<-"2013"
lengthofcolumns <-length(colnames(mortgagestatus2013))
mortgagestatus2013<-mortgagestatus2013[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mortgagestatus$`2014`, file = "mortgagestatus2014.csv")
mortgagestatus2014 <- data.frame(read.csv("mortgagestatus2014.csv"))
headers <- colnames(mortgagestatus2014)
headers[1] <- "Measures"
colnames(mortgagestatus2014) <-headers
mortgagestatus2014$year<-"2014"
lengthofcolumns <-length(colnames(mortgagestatus2014))
mortgagestatus2014<-mortgagestatus2014[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("mortgagestatus2010.csv",
            "mortgagestatus2011.csv", 
            "mortgagestatus2012.csv", 
            "mortgagestatus2013.csv", 
            "mortgagestatus2014.csv")

#recombine
mortgagestatus <- list("2010" = mortgagestatus2010, 
                       "2011" = mortgagestatus2011, 
                       "2012" = mortgagestatus2012, 
                       "2013" = mortgagestatus2013, 
                       "2014" = mortgagestatus2014)

#write out data into csv
#write.table(mortgagestatus$`2010`, file = "mortgagestatus.csv", append = TRUE, row.names = FALSE, sep = ",")
#write.table(mortgagestatus$`2011`, file = "mortgagestatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(mortgagestatus$`2012`, file = "mortgagestatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(mortgagestatus$`2013`, file = "mortgagestatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





