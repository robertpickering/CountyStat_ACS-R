# CountyStat_ACS-R
##installACS-R.R
This file must be run before any of the others are.  But, it only needs to be run once as it basically just sets up the environment withing R.

The first thing that the install script does is install the ACS-R package from the CRAN repository.  After that, a few helper packages are installed for use later.

Finally, the API key is installed.  Edit line 13 by replacing ... with your key.  Make sure the quotation marks stay in place.  If you don't have an API key on hand, you can get one from the US Census website.  

##geographies.R
This file creates a series of geographic set objects that will be used later when the queries to the API are made.  The geo.make method is used to create a geographic object which, can be combined with other geographic objects to make a single composite geographic object.  The geo.lookup method may be used in the console to find other geogrpahic lacations and names to add to the list of geographies to be made.  As shown in the current script, counties may be concatenated.  Other location types may be concatenated as well such as census tracts.  

Currently, there are 38 counties that are listed.  These are combined into the "allstates" variable.
