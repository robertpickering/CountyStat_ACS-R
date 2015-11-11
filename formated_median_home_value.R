
#dataframes for 2010

medianhomevalue2010 = t(data.frame(estimate(benchmarks2010[[4]])))

#dataframes for 2011

medianhomevalue2011 = t(data.frame(estimate(benchmarks2011[[4]])))

#dataframes for 2012

medianhomevalue2012 = t(data.frame(estimate(benchmarks2012[[4]])))

#dataframes for 2013

medianhomevalue2013 = t(data.frame(estimate(benchmarks2013[[4]])))


#combine all into one list
medianhomevalue <- list("2010" = medianhomevalue2010, "2011" = medianhomevalue2011, "2012" = medianhomevalue2012, "2013" = medianhomevalue2013)

# transform data to include years in first columns

write.csv(medianhomevalue$`2010`, file = "medianhomevalue2010.csv")
medianhomevalue2010 <- data.frame(read.csv("medianhomevalue2010.csv"))
headers <- colnames(medianhomevalue2010)
headers[1] <- "Measures"
colnames(medianhomevalue2010) <-headers
medianhomevalue2010$year<-"2010"
lengthofcolumns <-length(colnames(medianhomevalue2010))
medianhomevalue2010<-medianhomevalue2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(medianhomevalue$`2011`, file = "medianhomevalue2011.csv")
medianhomevalue2011 <- data.frame(read.csv("medianhomevalue2011.csv"))
headers <- colnames(medianhomevalue2011)
headers[1] <- "Measures"
colnames(medianhomevalue2011) <-headers
medianhomevalue2011$year<-"2011"
lengthofcolumns <-length(colnames(medianhomevalue2011))
medianhomevalue2011<-medianhomevalue2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(medianhomevalue$`2012`, file = "medianhomevalue2012.csv")
medianhomevalue2012 <- data.frame(read.csv("medianhomevalue2012.csv"))
headers <- colnames(medianhomevalue2012)
headers[1] <- "Measures"
colnames(medianhomevalue2012) <-headers
medianhomevalue2012$year<-"2012"
lengthofcolumns <-length(colnames(medianhomevalue2012))
medianhomevalue2012<-medianhomevalue2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(medianhomevalue$`2013`, file = "medianhomevalue2013.csv")
medianhomevalue2013 <- data.frame(read.csv("medianhomevalue2013.csv"))
headers <- colnames(medianhomevalue2013)
headers[1] <- "Measures"
colnames(medianhomevalue2013) <-headers
medianhomevalue2013$year<-"2013"
lengthofcolumns <-length(colnames(medianhomevalue2013))
medianhomevalue2013<-medianhomevalue2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("medianhomevalue2010.csv","medianhomevalue2011.csv", "medianhomevalue2012.csv", "medianhomevalue2013.csv")

#recombine
medianhomevalue <- list("2010" = medianhomevalue2010, "2011" = medianhomevalue2011, "2012" = medianhomevalue2012, "2013" = medianhomevalue2013)

#write out data into csv
write.table(medianhomevalue$`2010`, file = "medianhomevalue.csv", append = TRUE, row.names = FALSE, sep = ",")
write.table(medianhomevalue$`2011`, file = "medianhomevalue.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(medianhomevalue$`2012`, file = "medianhomevalue.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(medianhomevalue$`2013`, file = "medianhomevalue.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





