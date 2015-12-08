#Change the working directory to the directory where the scripts are stored>

measurecounter <-1

source("geographies.R", local = TRUE)
source("measures.R", local = TRUE)



#2010 Measures Intermediate data
benchmarks2010_B25003 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B25003", col.names = "pretty")
benchmarks2010_B25101 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B25101", col.names = "pretty")
benchmarks2010_B25106 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B25106", col.names = "pretty")
benchmarks2010_B25077 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B25077", col.names = "pretty")
benchmarks2010_B25111 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B25111", col.names = "pretty")
# Not available for this year benchmarks2010_B08136 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B08136")#
benchmarks2010_B17001 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B17001", col.names = "pretty")
benchmarks2010_B19013 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B19013", col.names = "pretty")
# Not available for this year benchmarks2010_B23025 = acs.fetch(endyear = years[1], geography = allstates, table.number = "B23025")#



#2011 Measures Intermediate data
benchmarks2011_B25003 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B25003", col.names = "pretty")
benchmarks2011_B25101 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B25101", col.names = "pretty")
benchmarks2011_B25106 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B25106", col.names = "pretty")
benchmarks2011_B25077 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B25077", col.names = "pretty")
benchmarks2011_B25111 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B25111", col.names = "pretty")
benchmarks2011_B08136 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B08136", col.names = "pretty")
benchmarks2011_B17001 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B17001", col.names = "pretty")
benchmarks2011_B19013 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B19013", col.names = "pretty")
benchmarks2011_B23025 = acs.fetch(endyear = years[2], geography = allstates, table.number = "B23025", col.names = "pretty")

#2012 Measures Intermediate data
benchmarks2012_B25003 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B25003", col.names = "pretty")
benchmarks2012_B25101 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B25101", col.names = "pretty")
benchmarks2012_B25106 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B25106", col.names = "pretty")
benchmarks2012_B25077 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B25077", col.names = "pretty")
benchmarks2012_B25111 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B25111", col.names = "pretty")
# Not available for this year benchmarks2012_B08136 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B08136")
benchmarks2012_B17001 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B17001", col.names = "pretty")
benchmarks2012_B19013 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B19013", col.names = "pretty")
# Not available for this year benchmarks2012_B23025 = acs.fetch(endyear = years[3], geography = allstates, table.number = "B23025")

#2013 Measures Intermediate data
benchmarks2013_B25003 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B25003", col.names = "pretty")
benchmarks2013_B25101 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B25101", col.names = "pretty")
benchmarks2013_B25106 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B25106", col.names = "pretty")
benchmarks2013_B25077 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B25077", col.names = "pretty")
benchmarks2013_B25111 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B25111", col.names = "pretty")
benchmarks2013_B08136 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B08136", col.names = "pretty")
benchmarks2013_B17001 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B17001", col.names = "pretty")
benchmarks2013_B19013 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B19013", col.names = "pretty")
benchmarks2013_B23025 = acs.fetch(endyear = years[4], geography = allstates, table.number = "B23025", col.names = "pretty")

#2014 Measures Intermediate data
benchmarks2014_B25003 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B25003", col.names = "pretty")
benchmarks2014_B25101 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B25101", col.names = "pretty")
benchmarks2014_B25106 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B25106", col.names = "pretty")
benchmarks2014_B25077 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B25077", col.names = "pretty")
benchmarks2014_B25111 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B25111", col.names = "pretty")
benchmarks2014_B08136 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B08136", col.names = "pretty")
benchmarks2014_B17001 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B17001", col.names = "pretty")
benchmarks2014_B19013 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B19013", col.names = "pretty")
benchmarks2014_B23025 = acs.fetch(endyear = years[5], geography = allstates, table.number = "B23025", col.names = "pretty")


#Create benchmarks for 2010
benchmarks2010 = list(benchmarks2010_B25003,
                      benchmarks2010_B25101,
                      benchmarks2010_B25106,
                      benchmarks2010_B25077,
                      benchmarks2010_B25111,
                      #benchmarks2010_B08136,
                      benchmarks2010_B17001,
                      benchmarks2010_B19013
                      #benchmarks2010_B23025
                      )
#Create benchmarks for 2011
benchmarks2011 = list(benchmarks2011_B25003,
                      benchmarks2011_B25101,
                      benchmarks2011_B25106,
                      benchmarks2011_B25077,
                      benchmarks2011_B25111,
                      benchmarks2011_B08136,
                      benchmarks2011_B17001,
                      benchmarks2011_B19013,
                      benchmarks2011_B23025)

#Create benchmarks for 2012
benchmarks2012 = list(benchmarks2012_B25003,
                      benchmarks2012_B25101,
                      benchmarks2012_B25106,
                      benchmarks2012_B25077,
                      benchmarks2012_B25111,
                      #benchmarks2012_B08136,
                      benchmarks2012_B17001,
                      benchmarks2012_B19013
                      #benchmarks2012_B23025
                      )

#Create benchmarks for 2013
benchmarks2013 = list(benchmarks2013_B25003,
                      benchmarks2013_B25101,
                      benchmarks2013_B25106,
                      benchmarks2013_B25077,
                      benchmarks2013_B25111,
                      benchmarks2013_B08136,
                      benchmarks2013_B17001,
                      benchmarks2013_B19013,
                      benchmarks2013_B23025)

#Create benchmarks for 2014
benchmarks2014 = list(benchmarks2014_B25003,
                      benchmarks2014_B25101,
                      benchmarks2014_B25106,
                      benchmarks2014_B25077,
                      benchmarks2014_B25111,
                      benchmarks2014_B08136,
                      benchmarks2014_B17001,
                      benchmarks2014_B19013,
                      benchmarks2014_B23025)



#dump intermediate data
rm(benchmarks2010_B25003,
   benchmarks2010_B25101,
   benchmarks2010_B25106,
   benchmarks2010_B25077,
   benchmarks2010_B25111,
   #benchmarks2010_B08136,
   benchmarks2010_B17001,
   benchmarks2010_B19013,
   #benchmarks2010_B23025
   benchmarks2011_B25003,
   benchmarks2011_B25101,
   benchmarks2011_B25106,
   benchmarks2011_B25077,
   benchmarks2011_B25111,
   benchmarks2011_B08136,
   benchmarks2011_B17001,
   benchmarks2011_B19013,
   benchmarks2011_B23025,
   benchmarks2012_B25003,
   benchmarks2012_B25101,
   benchmarks2012_B25106,
   benchmarks2012_B25077,
   benchmarks2012_B25111,
   #benchmarks2012_B08136,
   benchmarks2012_B17001,
   benchmarks2012_B19013,
   #benchmarks2012_B23025
   benchmarks2013_B25003,
   benchmarks2013_B25101,
   benchmarks2013_B25106,
   benchmarks2013_B25077,
   benchmarks2013_B25111,
   benchmarks2013_B08136,
   benchmarks2013_B17001,
   benchmarks2013_B19013,
   benchmarks2013_B23025,
   benchmarks2014_B25003,
   benchmarks2014_B25101,
   benchmarks2014_B25106,
   benchmarks2014_B25077,
   benchmarks2014_B25111,
   benchmarks2014_B08136,
   benchmarks2014_B17001,
   benchmarks2014_B19013,
   benchmarks2014_B23025)

