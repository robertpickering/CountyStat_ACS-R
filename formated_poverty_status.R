

#dataframes for 2010

povertystatus2010 = t(data.frame(estimate(benchmarks2010[[6]])))

#dataframes for 2011

povertystatus2011 = t(data.frame(estimate(benchmarks2011[[7]])))

#dataframes for 2012

povertystatus2012 = t(data.frame(estimate(benchmarks2012[[6]])))

#dataframes for 2013

povertystatus2013 = t(data.frame(estimate(benchmarks2013[[7]])))


#combine all into one list
povertystatus <- list("2010" = povertystatus2010, "2011" = povertystatus2011, "2012" = povertystatus2012, "2013" = povertystatus2013)

# transform data to include years in first columns

write.csv(povertystatus$`2010`, file = "povertystatus2010.csv")
povertystatus2010 <- data.frame(read.csv("povertystatus2010.csv"))
headers <- colnames(povertystatus2010)
headers[1] <- "Measures"
colnames(povertystatus2010) <-headers
povertystatus2010$year<-"2010"
lengthofcolumns <-length(colnames(povertystatus2010))
povertystatus2010<-povertystatus2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(povertystatus$`2011`, file = "povertystatus2011.csv")
povertystatus2011 <- data.frame(read.csv("povertystatus2011.csv"))
headers <- colnames(povertystatus2011)
headers[1] <- "Measures"
colnames(povertystatus2011) <-headers
povertystatus2011$year<-"2011"
lengthofcolumns <-length(colnames(povertystatus2011))
povertystatus2011<-povertystatus2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(povertystatus$`2012`, file = "povertystatus2012.csv")
povertystatus2012 <- data.frame(read.csv("povertystatus2012.csv"))
headers <- colnames(povertystatus2012)
headers[1] <- "Measures"
colnames(povertystatus2012) <-headers
povertystatus2012$year<-"2012"
lengthofcolumns <-length(colnames(povertystatus2012))
povertystatus2012<-povertystatus2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(povertystatus$`2013`, file = "povertystatus2013.csv")
povertystatus2013 <- data.frame(read.csv("povertystatus2013.csv"))
headers <- colnames(povertystatus2013)
headers[1] <- "Measures"
colnames(povertystatus2013) <-headers
povertystatus2013$year<-"2013"
lengthofcolumns <-length(colnames(povertystatus2013))
povertystatus2013<-povertystatus2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("povertystatus2010.csv","povertystatus2011.csv", "povertystatus2012.csv", "povertystatus2013.csv")

#recombine
povertystatus <- list("2010" = povertystatus2010, "2011" = povertystatus2011, "2012" = povertystatus2012, "2013" = povertystatus2013)

#write out data into csv
#write.table(povertystatus$`2010`, file = "povertystatus.csv", append = TRUE, row.names = FALSE, sep = ",")
#write.table(povertystatus$`2011`, file = "povertystatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(povertystatus$`2012`, file = "povertystatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
#write.table(povertystatus$`2013`, file = "povertystatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





