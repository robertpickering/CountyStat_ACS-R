source("getdata.R", local = TRUE)

#Uncomment the measures for which you want to format data

source("formatted_tenure.R", local = TRUE)
source("formatted_mortgage_status.R", local = TRUE)
source("formatted_tenure_by_housing_costs.R", local = TRUE)
source("formatted_median_home_value.R", local = TRUE)
source("formatted_median_gross_rent.R", local = TRUE)
source("formatted_poverty_status.R", local = TRUE)
source("formatted_median_income.R", local = TRUE)
source("formatted_median_income_b.R", local = TRUE)
source("formatted_employment_status.R", local = TRUE)

alldata <- list(tenure, 
                mortgagestatus, 
                tenurebyhousingcosts,
                medianhomevalue,
                mediangrossrent,
                povertystatus,
                medianincome,
                medianincom2011b,
                employmentstatus)


i<-1
while(i < (length(alldata)+1)){
   if(i==1){
     write.table(alldata[[i]]$`2010`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",")
     write.table(alldata[[i]]$`2011`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2012`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2013`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2014`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     
   }
     
   else{  
     write.table(alldata[[i]]$`2010`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2011`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2012`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2013`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
     write.table(alldata[[i]]$`2014`, file = "alldata.csv", append = TRUE, row.names = FALSE, sep = ",", col.names = FALSE)
   }
  i = i+1
}

