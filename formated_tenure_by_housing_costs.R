library(data.table)
library(plyr)
source("getdata.R", local = TRUE)

#dataframes for 2010

tenure2010 = t(data.frame(estimate(benchmarks2010[[1]])))
mortgagestatus2010 = t(data.frame(estimate(benchmarks2010[[2]])))
tenurebyhousingcosts2010 = t(data.frame(estimate(benchmarks2010[[3]])))
medianhomevalue2010 = t(data.frame(estimate(benchmarks2010[[4]])))
mediangrossrent2010 = t(data.frame(estimate(benchmarks2010[[5]])))
povertystatus2010 = t(data.frame(estimate(benchmarks2010[[6]])))
medianincome2010 = t(data.frame(estimate(benchmarks2010[[7]])))

#dataframes for 2011

tenure2011 = t(data.frame(estimate(benchmarks2011[[1]])))
mortgagestatus2011 = t(data.frame(estimate(benchmarks2011[[2]])))
tenurebyhousingcosts2011 = t(data.frame(estimate(benchmarks2011[[3]])))
medianhomevalue2011 = t(data.frame(estimate(benchmarks2011[[4]])))
mediangrossrent2011 = t(data.frame(estimate(benchmarks2011[[5]])))
povertystatus2011 = t(data.frame(estimate(benchmarks2011[[6]])))
medianincome2011 = t(data.frame(estimate(benchmarks2011[[7]])))
medianincom2011b = t(data.frame(estimate(benchmarks2011[[8]])))
employmentstatus2011 = t(data.frame(estimate(benchmarks2011[[9]])))

#dataframes for 2012

tenure2012 = t(data.frame(estimate(benchmarks2012[[1]])))
mortgagestatus2012 = t(data.frame(estimate(benchmarks2012[[2]])))
tenurebyhousingcosts2012 = t(data.frame(estimate(benchmarks2012[[3]])))
medianhomevalue2012 = t(data.frame(estimate(benchmarks2012[[4]])))
mediangrossrent2012 = t(data.frame(estimate(benchmarks2012[[5]])))
povertystatus2012 = t(data.frame(estimate(benchmarks2012[[6]])))
medianincome2012 = t(data.frame(estimate(benchmarks2012[[7]])))

#dataframes for 2013

tenure2013 = t(data.frame(estimate(benchmarks2013[[1]])))
mortgagestatus2013 = t(data.frame(estimate(benchmarks2013[[2]])))
tenurebyhousingcosts2013 = t(data.frame(estimate(benchmarks2013[[3]])))
medianhomevalue2013 = t(data.frame(estimate(benchmarks2013[[4]])))
mediangrossrent2013 = t(data.frame(estimate(benchmarks2013[[5]])))
povertystatus2013 = t(data.frame(estimate(benchmarks2013[[6]])))
medianincome2013 = t(data.frame(estimate(benchmarks2013[[7]])))
medianincom2013b = t(data.frame(estimate(benchmarks2013[[8]])))
employmentstatus2013 = t(data.frame(estimate(benchmarks2013[[9]])))



space = c(NULL,NULL,NULL,NULL,NULL,NULL,NULL)
tenure <- list("2010" = tenure2010, "2011" = tenure2011, "2012" = tenure2012, "2013" = tenure2013)
write.csv(tenure$`2010`, file = "tenure2010.csv")
tenure2010 <- data.frame(read.csv("tenure2010.csv"))
headers <- colnames(tenure2010)
headers[1] <- "Measures"
colnames(tenure2010) <-headers
tenure2010$year<-"2010"
tenure2010<-tenure2010[c(8,1,2,3,4,5,6,7)]

write.csv(tenure$`2011`, file = "tenure2011.csv")
tenure2011 <- data.frame(read.csv("tenure2011.csv"))
headers <- colnames(tenure2011)
headers[1] <- "Measures"
colnames(tenure2011) <-headers
tenure2011$year<-"2011"
tenure2011<-tenure2011[c(8,1,2,3,4,5,6,7)]

write.csv(tenure$`2012`, file = "tenure2012.csv")
tenure2012 <- data.frame(read.csv("tenure2012.csv"))
headers <- colnames(tenure2012)
headers[1] <- "Measures"
colnames(tenure2012) <-headers
tenure2012$year<-"2012"
tenure2012<-tenure2012[c(8,1,2,3,4,5,6,7)]

write.csv(tenure$`2013`, file = "tenure2013.csv")
tenure2013 <- data.frame(read.csv("tenure2013.csv"))
headers <- colnames(tenure2013)
headers[1] <- "Measures"
colnames(tenure2013) <-headers
tenure2013$year<-"2013"
tenure2013<-tenure2013[c(8,1,2,3,4,5,6,7)]

tenure <- list("2010" = tenure2010, "2011" = tenure2011, "2012" = tenure2012, "2013" = tenure2013)

write.table(tenure$`2010`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",")
write.table(tenure$`2011`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(tenure$`2012`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
write.table(tenure$`2013`, file = "tenure.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)











#tenure2013measures <- row.names(tenure2013)
#len_tenure2013 <- length(tenure2013measures)
#`row.names<-`(tenure2013, 1:len_tenure2013)
#tenure2013[Measures] <- tenure2013measures




#tenure2013.Trans <- t(tenure2013)
#tenure2013.Trans.colnames <- c("Year", "Measure", colnames(tenure2013.Trans))
#Missing <- setdiff(tenure2013.Trans.colnames, names(tenure2013.Trans))
#missingdf <- data.frame(2013, row.names(tenure2013.Trans))
#tenure2013.Trans.colnames <- c(missing_cols, tenure2013.Trans.colnames)

