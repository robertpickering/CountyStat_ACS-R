#make sure ACS library is loaded
library("acs")

#Create geographic variables for different States.

California = geo.make(state = "CA", county = c("Contra Costa", "Marin", "San Mateo", "Ventura", "Santa Clara"))
Colorado = geo.make(state = "CO", county = "Douglas")
DC = geo.make(state = "DC")
Illinois = geo.make(state = "IL", county = c("DuPage", "Lake"))
Indiana = geo.make(state = "IN", county = "Hamilton")
Kansas = geo.make(state = "KS", county = "Johnson")
Maryland = geo.make(state = "MD", county = c("Anne Arundel", "Baltimore County", "Frederick", "Howard", "Montgomery", "Prince George's County"))
Michigan = geo.make(state = "MI", county = "Oakland")
Minnesota = geo.make(state = "MN", county = c("Dakota", "Washington"))
New_Jersey = geo.make(state = "NJ", county = c("Bergen", "Middlesex", "Monmouth", "Morris", "Somerset"))
New_York = geo.make(state = "NY", county = c("Nassau", "Rockland", "Suffolk", "Westchester"))
Pennsylvania = geo.make(state = "PA", county = c("Bucks", "Chester", "Montgomery"))
Texas = geo.make(state = "TX", county = c("Collin County", "Fort Bend"))
Virginia = geo.make(state = "VA", county = c("Arlington County", "Fairfax County", "Loudoun County", "Prince William County"))
Wisconsin = geo.make(state = "WI", county = "Waukesha")

allstates = 
  California+
  Colorado+
  DC+
  Illinois+
  Indiana+
  Kansas+
  Michigan+
  Minnesota+
  New_Jersey+
  New_York+
  Pennsylvania+
  Texas+
  Virginia+
  Wisconsin+
  Maryland
