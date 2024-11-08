/****** Object:  Table "City"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "City"(
	"city_id" int NOT NULL,
	"city_name" varchar NULL,
 CONSTRAINT "PK_City" PRIMARY KEY  
(
	"city_id" 
));

/****** Object:  Table "'Cost of Living'"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "'Cost of Living'"(
	"Year" int NOT NULL,
	"Month" int NOT NULL,
	"City_ID" int NOT NULL,
	"CPI_INDEX" float NULL,
	"HOUSING_AVG_PRICE" float NULL,
	"GASOLINA_AVG_PRICE" float NULL,
	"HOUSE_HOLD_PRICE" float NULL,
	"EMPLOYMENT" float NULL,
	"CRSPI" float NULL,
 CONSTRAINT "PK_'Cost of Living'" PRIMARY KEY  
(
	"Year" , "Month" , "City_ID" 
));

/****** Object:  Table "Crime"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "Crime"(
	"Year" int NOT NULL,
	"Month" int NOT NULL,
	"City Id" int NOT NULL,
	"Miscellaneous/Other Crimes" float NULL,
	"Non-compliance and Order Violations" float NULL,
	"Property Crimes" float NULL,
	"Traffic-related Crimes" float NULL,
	"Violent Crimes" float NULL,
 CONSTRAINT "PK_Crime" PRIMARY KEY  
(
	"Year" , "Month" , "City Id" 
));

/****** Object:  Table "Demographics"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "Demographics"(
	"Year" int NOT NULL,
	"Month" int NOT NULL,
	"City_ID" int NOT NULL,
	"Age - 0 - 14 years" float NULL,
	"Age - 15 - 64 yrs" float NULL,
	"Age - 65 yrs & over" float NULL,
	"Age - 85 yrs & over" float NULL,
	"Female" float NULL,
	"Male" float NULL,
	"Married or living common law" float NULL,
	"Not married and not living common law" float NULL,
	"FirstOfficialLanguage" float NULL,
	"English" float NULL,
	"French" float NULL,
	"English & French" float NULL,
	"Neither English nor French" float NULL,
 CONSTRAINT "PK_Demographics" PRIMARY KEY  
(
	"Year" , "Month" , "City_ID" 
));

/****** Object:  Table "Employment"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "Employment"(
	"years" int NOT NULL,
	"month" int NOT NULL,
	"city_id" int NOT NULL,
	"management_administration" float NULL,
	"financial_accounting" float NULL,
	"hr_admin" float NULL,
	"it_engineering" float NULL,
	"legal_services" float NULL,
	"education" float NULL,
	"healthcare" float NULL,
	"arts_media" float NULL,
	"transport" float NULL,
	"manufacturing_production" float NULL,
	"skilled_trades" float NULL,
	"csr" float NULL,
	"population" float NULL,
	"umemployment_rate " float NULL,
	"employment_in_person" float NULL,
 CONSTRAINT "PK_Employment" PRIMARY KEY  
(
	"years" , "month" ,"city_id" 
));

/****** Object:  Table "Transit"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "Transit"(
	"Year" int NOT NULL,
	"Month" int NOT NULL,
	"CityID" int NOT NULL,
	"Aircraft_Movement_Rate(%)" float NULL,
	"Fuel_Price" float NULL,
	"Passenger_Growth_Rate(%)" float NULL,
 CONSTRAINT "PK_Transit" PRIMARY KEY  
(
	"Year" , "Month" , "CityID" 
));

/****** Object:  Table "Weather"    Script Date: 2024-03-19 9:35:53 PM ******/
CREATE TABLE "Weather"(
	"year" int NOT NULL,
	"month" int NOT NULL,
	"city_id" int NOT NULL,
	"avg_temperature" float NULL,
	"wind_speed" float NULL,
	"precipitation" float NULL,
	"snow" float NULL,
 CONSTRAINT "PK_Weather" PRIMARY KEY  
(
	"year" , "month" ,"city_id" 
));
