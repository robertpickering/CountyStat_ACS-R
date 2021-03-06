# CountyStat_ACS-R
The following is a basic synopsis of the various files and how they work together to get Census data and combine it into a CSV formated file suitable for upload to the Socrata Open Performance Platform.

----------

##installACS-R.R
This file must be run before any of the others are.  But, it only needs to be run once as it basically just sets up the environment within R.

The first thing that the install script does is install the ACS-R package from the CRAN repository.  After that, a few helper packages are installed for use later.

Finally, the API key is installed.  Edit line 13 by replacing ... with your key.  Make sure the quotation marks stay in place.  If you don't have an API key on hand, you can get one from the US Census website.  

Documentation for the ACS-R package is available from CRAN [here](https://cran.r-project.org/web/packages/acs/acs.pdf).  Additionally, there is a great article written by the author of the package, Ezra Haber Glenn, [here](http://eglenn.scripts.mit.edu/citystate/wp-content/uploads/2013/06/wpid-working_with_acs_R3.pdf).

##geographies.R
This file creates a series of geographic set objects that will be used later when the queries to the API are made.  The geo.make method is used to create a geographic object which, can be combined with other geographic objects to make a single composite geographic object.  The geo.lookup method may be used in the console to find other geographic locations and names to add to the list of geographies to be made.  As shown in the current script, counties may be concatenated.  Other location types may be concatenated as well such as census tracts.  

Currently, there are 38 counties that are listed.  These are combined into the **allstates** variable.

##measures.R
This file contains a vector (R terminology for an array) for the ACS tables that are to be queried later.  Additionally, it contains a vector for the years to be queried.  The current version of the ACS-R package primarily supports the five year American Community Survey from years 2010 to 2013.  There is some limited support for the one and three year surveys but they are not really suitable (stable enough) for the type of bulk data acquisition that these scripts perform.  Other tables can be found using the acs.lookup method.  

##getdata.R
This file can be run by itself as it will source the geographies.R file to build the appropriate geographic sets.  This is the file that accesses the Census Data via its API and as such may take quite a while to execute - especially if the geography set is large. Some tables, such as B17001 have 59 variables associated with it.  If all of those variables are not required, it is possible to edit what data is fetched to reduce the amount of data retrieved and the amount of time required to perform the query.  For instance this line will retrieve all 59 variables for each geographic location for one year.

    acs.fetch(endyear = years[1], geography = allstates, table.number = "B17001", col.names = "pretty")



Modifying it slightly by adding the keyword variable reduces the number of variables to 1.   `acs.fetch(endyear = years[1], geography = allstates, table.number = "B17001", col.names = "pretty", keyword = c("75","Male", "below"))`

Using the acs.lookup method on the console is a good way to experiment with creating the best queries.  

----------
Initially, there was a desire to have the data retrieved in a while loop.  Unfortunately, when an error occurs in the retrieval of data, the loop will terminate and not fetch the rest of the data. In the case of the years 2010 and 2012, data tables B08136 and B23025 don't exist and so they error out.  This caused the other years to not fetch data beyond these errors as well.  Consequently, each table/year combination is fetched individually.  The drawback to this is that the file may grow exceedingly large in the future.  However, it lends itself well to debugging.  The tables are then combined by year into four separate lists and then the intermediate data is dispensed with.

##format_data.R
 This file can be run with no modifications once the install.R script has been run successfully.  It sources the getdata.R file which, will pull all the data as described in the previous section.  Once that has successfully acquired the data, a series of files for the individual measures are sourced which, transform the ACS-R data objects into data frames.  If measures other than the ones listed in getdata.R are required, an additional formatted_xxx.R file must be created with an appropriate source line added to format_data.R with the corresponding measure added to the list called alldata.  Once the alldata list is populated, a while loop writes the data to the the file alldata.csv.

