#Make a list of Geo Locations
California = geo.make(state = "CA", county = c("Contra Costa", "Marin", "San Mateo", "Ventura", "Santa Clara"))
Colorado = geo.make(state = "CO", county = "Douglas")
DC = geo.make(state = "DC")
Illinois = geo.make(state = "IL", county = c("DuPage", "Lake"))
Indiana = geo.make(state = "IN", county = "Hamilton")
Kansas = geo.make(state = "KS", county = "Johnson")
Maryland = geo.make(state = "MD", county = c("Anne Arundel", "Baltimore County", "Frederick", "Howard", "Montgomery", "Prince George's County"))

#Combine all together to make one geo.set
allStateCounties = California + Colorado + DC + Illinois + Indiana + Kansas + Maryland

#2011 TENURE – Universe: Occupied housing units 
tenure2011 =acs.fetch(endyear = "2011", span = "5", 
                      geography = allStateCounties, 
                      table.number = "B25003") 

#Housing Burden 
burden2010 =acs.fetch(endyear = "2010", span = "5", 
                      geography = allStateCounties, 
                      table.number = "B25101") 
#Housing Burden 
MDburden2010 =acs.fetch(endyear = "2010", span = "5", 
                      geography = Maryland, 
                      table.number = "B25101") 

#start and end years
startyear = 2010
endingyear = 2012
years = seq(startyear, endingyear)
x=1
n <- length(years)
tenure <- array(1:3, dim=c(1,1,n))
while (x < n){
  tenure[x] <- acs.fetch(endyear = startyear -1 +n, 
                         geography = allStateCounties, 
                         table.number = "B25003") 
  x = x + 1
}


                    