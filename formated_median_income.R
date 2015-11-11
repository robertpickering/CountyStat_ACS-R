
#dataframes for 2010

medianincome2010 = t(data.frame(estimate(benchmarks2010[[7]])))

#dataframes for 2011

medianincome2011 = t(data.frame(estimate(benchmarks2011[[8]])))

#dataframes for 2012

medianincome2012 = t(data.frame(estimate(benchmarks2012[[7]])))

#dataframes for 2013

medianincome2013 = t(data.frame(estimate(benchmarks2013[[8]])))


#combine all into one list
medianincome <- list("2010" = medianincome2010, "2011" = medianincome2011, "2012" = medianincome2012, "2013" = medianincome2013)

# transform data to include years in first columns

write.csv(medianincome$`2010`, file = "medianincome2010.csv")
medianincome2010 <- data.frame(read.csv("medianincome2010.csv"))
headers <- colnames(medianincome2010)
headers[1] <- "Measures"
colnames(medianincome2010) <-headers
medianincome2010$year<-"2010"
lengthofcolumns <-length(colnames(medianincome2010))
medianincome2010<-medianincome2010[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(medianincome$`2011`, file = "medianincome2011.csv")
medianincome2011 <- data.frame(read.csv("medianincome2011.csv"))
headers <- colnames(medianincome2011)
headers[1] <- "Measures"
colnames(medianincome2011) <-headers
medianincome2011$year<-"2011"
lengthofcolumns <-length(colnames(medianincome2011))
medianincome2011<-medianincome2011[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(medianincome$`2012`, file = "medianincome2012.csv")
medianincome2012 <- data.frame(read.csv("medianincome2012.csv"))
headers <- colnames(medianincome2012)
headers[1] <- "Measures"
colnames(medianincome2012) <-headers
medianincome2012$year<-"2012"
lengthofcolumns <-length(colnames(medianincome2012))
medianincome2012<-medianincome2012[c(lengthofcolumns,1:lengthofcolumns-1)]

write.csv(medianincome$`2013`, file = "medianincome2013.csv")
medianincome2013 <- data.frame(read.csv("medianincome2013.csv"))
headers <- colnames(medianincome2013)
headers[1] <- "Measures"
colnames(medianincome2013) <-headers
medianincome2013$year<-"2013"
lengthofcolumns <-length(colnames(medianincome2013))
medianincome2013<-medianincome2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("medianincome2010.csv","medianincome2011.csv", "medianincome2012.csv", "medianincome2013.csv")

#recombine
medianincome <- list("2010" = medianincome2010, "2011" = medianincome2011, "2012" = medianincome2012, "2013" = medianincome2013)

#write out data into csv
write.table(medianincome$`2010`, file = "medianincome.csv", append = TRUE, row.names = FALSE, sep = ",")
write.table(medianincome$`2011`, file = "medianincome.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(medianincome$`2012`, file = "medianincome.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(medianincome$`2013`, file = "medianincome.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





