CSE 4/560 Spring Semester Project - Flight Delay Database
Dataset Source: https://github.com/gchoi/Dataset/blob/master/FlightDelays.csv#L356

The number of attributes: 13
The number of rows: 2201

Attributes
- schedtime: expressed as 4 digits (e.g. 600 -> 6:00 am, 2130 -> 9:30)
- carrier: 8 carriers (CO, DH, DL, MQ, OH, RU, UA, US)
- deptime: the same format as schedtime
- dest: 3 destinations (JFK, LGA, EWR)
- distance: from JFK to BWI (184), from JFK to DCA (213), from JFK to IAD (228), from LGA to DCA (214), from LGA to IAD (229), from EWR to BWI (169), from EWR to DCA (199), from EWR to IAD (213)
- date: from Jan. 1, 2004 to Jan. 31, 2004
- flightnumber: 3~4 int
- origin: 3 origins (BWI, DCA, IAD)
- weather: not bad (0), bad (1)
- dayweek: from Mon. (1) to Sun. (7)
- daymonth: date (from 1 to 31)
- tailnu: the first letter -> character, from the second to the fourth letters -> digit, the last two letters -> character
- delay: ontime / delayed