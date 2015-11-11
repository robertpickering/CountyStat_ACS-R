
#dataframes for 2011

medianincom2011b2011 = t(data.frame(estimate(benchmarks2011[[8]])))

#dataframes for 2013

medianincom2011b2013 = t(data.frame(estimate(benchmarks2013[[8]])))


#combine all into one list
medianincom2011b <- list("2011" = medianincom2011b2011, "2013" = medianincom2011b2013)

# transform data to include years in first columns

write.csv(medianincom2011b$`2011`, file = "medianincom2011b2011.csv")
medianincom2011b2011 <- data.frame(read.csv("medianincom2011b2011.csv"))
headers <- colnames(medianincom2011b2011)
headers[1] <- "Measures"
colnames(medianincom2011b2011) <-headers
medianincom2011b2011$year<-"2011"
lengthofcolumns <-length(colnames(medianincom2011b2011))
medianincom2011b2011<-medianincom2011b2011[c(lengthofcolumns,1:lengthofcolumns-1)]


write.csv(medianincom2011b$`2013`, file = "medianincom2011b2013.csv")
medianincom2011b2013 <- data.frame(read.csv("medianincom2011b2013.csv"))
headers <- colnames(medianincom2011b2013)
headers[1] <- "Measures"
colnames(medianincom2011b2013) <-headers
medianincom2011b2013$year<-"2013"
lengthofcolumns <-length(colnames(medianincom2011b2013))
medianincom2011b2013<-medianincom2011b2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("medianincom2011b2011.csv", "medianincom2011b2013.csv")

#recombine
medianincom2011b <- list("2011" = medianincom2011b2011, "2013" = medianincom2011b2013)

#write out data into csv
#write.table(medianincom2011b$`2010`, file = "medianincom2011b.csv", append = TRUE, row.names = FALSE, sep = ",")
write.table(medianincom2011b$`2011`, file = "medianincom2011b.csv", append = TRUE, row.names = FALSE, sep = ",")
#write.table(medianincom2011b$`2012`, file = "medianincom2011b.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(medianincom2011b$`2013`, file = "medianincom2011b.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)





