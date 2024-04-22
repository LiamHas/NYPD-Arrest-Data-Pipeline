CREATE SCHEMA INSTANCE;

CREATE TABLE nypd_arrest_dw_lgl.INSTANCE.dim_arrest ( 
	arrestID int64  ,
	offenseCategory string  ,
	offenseDescription string  ,
	offenseLevel string  ,
	arrestPrecinct int64  
 );

CREATE TABLE nypd_arrest_dw_lgl.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  ,
	year int64  ,
	quarter int64  ,
	monthNumber int64  ,
	monthName string  ,
	weekOfMonth int64  ,
	weekOfYear int64  ,
	dayName string  ,
	dayNumber int64  ,
	dateIsoformat datetime  
 );

ALTER TABLE nypd_arrest_dw_lgl.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE nypd_arrest_dw_lgl.INSTANCE.dim_location ( 
	locationID int64 NOT NULL  ,
	arrestBorough string  ,
	latitude numeric  ,
	longitude numeric  
 );

ALTER TABLE nypd_arrest_dw_lgl.INSTANCE.dim_location ADD PRIMARY KEY ( locationID )  NOT ENFORCED;

CREATE TABLE nypd_arrest_dw_lgl.INSTANCE.dim_perpetrator ( 
	perpetratorID int64 NOT NULL  ,
	ageGroup string  ,
	sex string  ,
	race string  
 );

ALTER TABLE nypd_arrest_dw_lgl.INSTANCE.dim_perpetrator ADD PRIMARY KEY ( perpetratorID )  NOT ENFORCED;

CREATE TABLE nypd_arrest_dw_lgl.INSTANCE.facts_nypd_arrests ( 
	factID int64 NOT NULL  ,
	locationID int64  ,
	arrestID int64  ,
	perpetratorID int64  ,
	arrestDate int64  
 );

ALTER TABLE nypd_arrest_dw_lgl.INSTANCE.facts_nypd_arrests ADD PRIMARY KEY ( factID )  NOT ENFORCED;
