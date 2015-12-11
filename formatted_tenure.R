

#dataframes for 2010

tenure2010 = t(data.frame(estimate(benchmarks2010[[1]])))

#dataframes for 2011

tenure2011 = t(data.frame(estimate(benchmarks2011[[1]])))

#dataframes for 2012

tenure2012 = t(data.frame(estimate(benchmarks2012[[1]])))

#dataframes for 2013

tenure2013 = t(data.frame(estimate(benchmarks2013[[1]])))

#dataframes for 2014

tenure2014 = t(data.frame(estimate(benchmarks2014[[1]])))


#combine all into one list
tenure <- list("2010" = tenure2010, 
               "2011" = tenure2011, 
               "2012" = tenure2012, 
               "2013" = tenure2013, 
               "2014" = tenure2014)

# transform data to include years in first columns

write.csv(tenure$`2010`, file = "tenure2010.csv")
tenure2010 <- data.frame(read.csv("tenure2010.csv"))
headers <- colnames(tenure2010)
headers[1] <- "Measures"
colnames(tenure2010) <-headers
tenure2010$year<-"2010"
lengthofcolumns <-length(colnames(tenure2010))
tenure2010<-tenure2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenure$`2011`, file = "tenure2011.csv")
tenure2011 <- data.frame(read.csv("tenure2011.csv"))
headers <- colnames(tenure2011)
headers[1] <- "Measures"
colnames(tenure2011) <-headers
tenure2011$year<-"2011"
lengthofcolumns <-length(colnames(tenure2011))
tenure2011<-tenure2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenure$`2012`, file = "tenure2012.csv")
tenure2012 <- data.frame(read.csv("tenure2012.csv"))
headers <- colnames(tenure2012)
headers[1] <- "Measures"
colnames(tenure2012) <-headers
tenure2012$year<-"2012"
lengthofcolumns <-length(colnames(tenure2012))
tenure2012<-tenure2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenure$`2013`, file = "tenure2013.csv")
tenure2013 <- data.frame(read.csv("tenure2013.csv"))
headers <- colnames(tenure2013)
headers[1] <- "Measures"
colnames(tenure2013) <-headers
tenure2013$year<-"2013"
lengthofcolumns <-length(colnames(tenure2013))
tenure2013<-tenure2013[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenure$`2014`, file = "tenure2014.csv")
tenure2014 <- data.frame(read.csv("tenure2014.csv"))
headers <- colnames(tenure2014)
headers[1] <- "Measures"
colnames(tenure2014) <-headers
tenure2014$year<-"2014"
lengthofcolumns <-length(colnames(tenure2014))
tenure2014<-tenure2014[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("tenure2010.csv",
            "tenure2011.csv", 
            "tenure2012.csv", 
            "tenure2013.csv", 
            "tenure2014.csv")

#recombine
tenure <- list("2010" = tenure2010, 
               "2011" = tenure2011, 
               "2012" = tenure2012, 
               "2013" = tenure2013, 
               "2014" = tenure2014)

#write out data into csv
#write.table(tenure$`2010`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",")
#write.table(tenure$`2011`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(tenure$`2012`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(tenure$`2013`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





