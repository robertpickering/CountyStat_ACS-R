#dataframes for 2011

employmentstatus2011 = t(data.frame(estimate(benchmarks2011[[9]])))

#dataframes for 2012

employmentstatus2013 = t(data.frame(estimate(benchmarks2013[[9]])))


#combine all into one list
employmentstatus <- list("2011" = employmentstatus2011, "2013" = employmentstatus2013)

# transform data to include years in first columns

write.csv(employmentstatus$`2011`, file = "employmentstatus2011.csv")
employmentstatus2011 <- data.frame(read.csv("employmentstatus2011.csv"))
headers <- colnames(employmentstatus2011)
headers[1] <- "Measures"
colnames(employmentstatus2011) <-headers
employmentstatus2011$year<-"2011"
lengthofcolumns <-length(colnames(employmentstatus2011))
employmentstatus2011<-employmentstatus2011[c(lengthofcolumns,1:lengthofcolumns-1)]


write.csv(employmentstatus$`2013`, file = "employmentstatus2013.csv")
employmentstatus2013 <- data.frame(read.csv("employmentstatus2013.csv"))
headers <- colnames(employmentstatus2013)
headers[1] <- "Measures"
colnames(employmentstatus2013) <-headers
employmentstatus2013$year<-"2013"
lengthofcolumns <-length(colnames(employmentstatus2013))
employmentstatus2013<-employmentstatus2013[c(lengthofcolumns,1:lengthofcolumns-1)]

#remove intermediate csv files
file.remove("employmentstatus2011.csv", "employmentstatus2013.csv")

#recombine
employmentstatus <- list("2011" = employmentstatus2011, "2013" = employmentstatus2013)

#write out data into csv
write.table(employmentstatus$`2011`, file = "employmentstatus.csv", append = TRUE, row.names = FALSE, sep = ",")
write.table(employmentstatus$`2013`, file = "employmentstatus.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
