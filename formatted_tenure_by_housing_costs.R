
#dataframes for 2010

tenurebyhousingcosts2010 = t(data.frame(estimate(benchmarks2010[[3]])))

#dataframes for 2011

tenurebyhousingcosts2011 = t(data.frame(estimate(benchmarks2011[[3]])))

#dataframes for 2012

tenurebyhousingcosts2012 = t(data.frame(estimate(benchmarks2012[[3]])))

#dataframes for 2013

tenurebyhousingcosts2013 = t(data.frame(estimate(benchmarks2013[[3]])))


#combine all into one list
tenurebyhousingcosts <- list("2010" = tenurebyhousingcosts2010, "2011" = tenurebyhousingcosts2011, "2012" = tenurebyhousingcosts2012, "2013" = tenurebyhousingcosts2013)

# transform data to include years in first columns

write.csv(tenurebyhousingcosts$`2010`, file = "tenurebyhousingcosts2010.csv")
tenurebyhousingcosts2010 <- data.frame(read.csv("tenurebyhousingcosts2010.csv"))
headers <- colnames(tenurebyhousingcosts2010)
headers[1] <- "Measures"
colnames(tenurebyhousingcosts2010) <-headers
tenurebyhousingcosts2010$year<-"2010"
lengthofcolumns <-length(colnames(tenurebyhousingcosts2010))
tenurebyhousingcosts2010<-tenurebyhousingcosts2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenurebyhousingcosts$`2011`, file = "tenurebyhousingcosts2011.csv")
tenurebyhousingcosts2011 <- data.frame(read.csv("tenurebyhousingcosts2011.csv"))
headers <- colnames(tenurebyhousingcosts2011)
headers[1] <- "Measures"
colnames(tenurebyhousingcosts2011) <-headers
tenurebyhousingcosts2011$year<-"2011"
lengthofcolumns <-length(colnames(tenurebyhousingcosts2011))
tenurebyhousingcosts2011<-tenurebyhousingcosts2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenurebyhousingcosts$`2012`, file = "tenurebyhousingcosts2012.csv")
tenurebyhousingcosts2012 <- data.frame(read.csv("tenurebyhousingcosts2012.csv"))
headers <- colnames(tenurebyhousingcosts2012)
headers[1] <- "Measures"
colnames(tenurebyhousingcosts2012) <-headers
tenurebyhousingcosts2012$year<-"2012"
lengthofcolumns <-length(colnames(tenurebyhousingcosts2012))
tenurebyhousingcosts2012<-tenurebyhousingcosts2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(tenurebyhousingcosts$`2013`, file = "tenurebyhousingcosts2013.csv")
tenurebyhousingcosts2013 <- data.frame(read.csv("tenurebyhousingcosts2013.csv"))
headers <- colnames(tenurebyhousingcosts2013)
headers[1] <- "Measures"
colnames(tenurebyhousingcosts2013) <-headers
tenurebyhousingcosts2013$year<-"2013"
lengthofcolumns <-length(colnames(tenurebyhousingcosts2013))
tenurebyhousingcosts2013<-tenurebyhousingcosts2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("tenurebyhousingcosts2010.csv","tenurebyhousingcosts2011.csv", "tenurebyhousingcosts2012.csv", "tenurebyhousingcosts2013.csv")

#recombine
tenurebyhousingcosts <- list("2010" = tenurebyhousingcosts2010, "2011" = tenurebyhousingcosts2011, "2012" = tenurebyhousingcosts2012, "2013" = tenurebyhousingcosts2013)

#write out data into csv
#write.table(tenurebyhousingcosts$`2010`, file = "tenurebyhousingcosts.csv", append = TRUE, row.names = FALSE, sep = ",")
#write.table(tenurebyhousingcosts$`2011`, file = "tenurebyhousingcosts.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(tenurebyhousingcosts$`2012`, file = "tenurebyhousingcosts.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(tenurebyhousingcosts$`2013`, file = "tenurebyhousingcosts.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





