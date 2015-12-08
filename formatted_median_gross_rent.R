
#dataframes for 2010

mediangrossrent2010 = t(data.frame(estimate(benchmarks2010[[5]])))

#dataframes for 2011

mediangrossrent2011 = t(data.frame(estimate(benchmarks2011[[5]])))

#dataframes for 2012

mediangrossrent2012 = t(data.frame(estimate(benchmarks2012[[5]])))

#dataframes for 2013

mediangrossrent2013 = t(data.frame(estimate(benchmarks2013[[5]])))


#combine all into one list
mediangrossrent <- list("2010" = mediangrossrent2010, "2011" = mediangrossrent2011, "2012" = mediangrossrent2012, "2013" = mediangrossrent2013)

# transform data to include years in first columns

write.csv(mediangrossrent$`2010`, file = "mediangrossrent2010.csv")
mediangrossrent2010 <- data.frame(read.csv("mediangrossrent2010.csv"))
headers <- colnames(mediangrossrent2010)
headers[1] <- "Measures"
colnames(mediangrossrent2010) <-headers
mediangrossrent2010$year<-"2010"
lengthofcolumns <-length(colnames(mediangrossrent2010))
mediangrossrent2010<-mediangrossrent2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mediangrossrent$`2011`, file = "mediangrossrent2011.csv")
mediangrossrent2011 <- data.frame(read.csv("mediangrossrent2011.csv"))
headers <- colnames(mediangrossrent2011)
headers[1] <- "Measures"
colnames(mediangrossrent2011) <-headers
mediangrossrent2011$year<-"2011"
lengthofcolumns <-length(colnames(mediangrossrent2011))
mediangrossrent2011<-mediangrossrent2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mediangrossrent$`2012`, file = "mediangrossrent2012.csv")
mediangrossrent2012 <- data.frame(read.csv("mediangrossrent2012.csv"))
headers <- colnames(mediangrossrent2012)
headers[1] <- "Measures"
colnames(mediangrossrent2012) <-headers
mediangrossrent2012$year<-"2012"
lengthofcolumns <-length(colnames(mediangrossrent2012))
mediangrossrent2012<-mediangrossrent2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(mediangrossrent$`2013`, file = "mediangrossrent2013.csv")
mediangrossrent2013 <- data.frame(read.csv("mediangrossrent2013.csv"))
headers <- colnames(mediangrossrent2013)
headers[1] <- "Measures"
colnames(mediangrossrent2013) <-headers
mediangrossrent2013$year<-"2013"
lengthofcolumns <-length(colnames(mediangrossrent2013))
mediangrossrent2013<-mediangrossrent2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("mediangrossrent2010.csv","mediangrossrent2011.csv", "mediangrossrent2012.csv", "mediangrossrent2013.csv")

#recombine
mediangrossrent <- list("2010" = mediangrossrent2010, "2011" = mediangrossrent2011, "2012" = mediangrossrent2012, "2013" = mediangrossrent2013)

#write out data into csv
#write.table(mediangrossrent$`2010`, file = "mediangrossrent.csv", append = TRUE, row.names = FALSE, sep = ",")
#write.table(mediangrossrent$`2011`, file = "mediangrossrent.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(mediangrossrent$`2012`, file = "mediangrossrent.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(mediangrossrent$`2013`, file = "mediangrossrent.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





