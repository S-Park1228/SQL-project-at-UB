CREATE TABLE AIRCRAFT(
	Tailnu	CHAR(6),
	Carrier CHAR(2) NOT NULL,
	PRIMARY KEY (Tailnu));

CREATE TABLE DATE_(
	FlightDate	DATE,
	DayMonth	INT NOT NULL,
	DayWeek		INT NOT NULL,
	PRIMARY KEY(FlightDate));

CREATE TABLE FLIGHT(
	FlightNum	INT,
	Origin		CHAR(3) NOT NULL,
	Dest		CHAR(3) NOT NULL,
	Schedtime	INT NOT NULL,
	Distance	INT NOT NULL,
	PRIMARY KEY(FlightNum)
	);

CREATE TABLE FLIGHTDATE(
	FlightdateID	INT,
	FlightNum	INT NOT NULL,
	FlightDate	DATE NOT NULL,
	Deptime		INT NOT NULL,
	Tailnu		CHAR(6) NOT NULL,
	Delay		CHAR(7) NOT NULL,
	Weather		BOOLEAN NOT NULL,
	PRIMARY KEY(FlightdateID),
	FOREIGN KEY(FlightNum) REFERENCES FLIGHT(FlightNum) ON DELETE CASCADE,
	FOREIGN KEY(FlightDate) REFERENCES DATE_(FlightDate) ON DELETE CASCADE,
	FOREIGN KEY(Tailnu) REFERENCES AIRCRAFT(Tailnu) ON DELETE CASCADE);

