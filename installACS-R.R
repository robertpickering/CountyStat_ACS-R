#You only need to run this script one time.

#This will install ACS-R and maybe some other packages.  
#Just follow the prompts as necessary.
install.packages("acs")

#Install the data.table package for later use with shaping data.
install.packages("data.table")

install.packages("plyr") #run this if you don't have the package already

#Enter your Census API Key by replacing the elipses
api.key.install(key="...")