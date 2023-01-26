/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Column 0]
      ,[id]
      ,[Gender]
      ,[Customer Type]
      ,[Age]
      ,[Type of Travel]
      ,[Class]
      ,[Flight Distance]
      ,[Inflight wifi service]
      ,[Departure Arrival time convenient]
      ,[Ease of Online booking]
      ,[Gate location]
      ,[Food and drink]
      ,[Online boarding]
      ,[Seat comfort]
      ,[Inflight entertainment]
      ,[On-board service]
      ,[Leg room service]
      ,[Baggage handling]
      ,[Checkin service]
      ,[Inflight service]
      ,[Cleanliness]
      ,[Departure Delay in Minutes]
      ,[Arrival Delay in Minutes]
      ,[satisfaction]
  FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total the dataset rows
SELECT COUNT(*) FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total of the passengers
SELECT COUNT(DISTINCT ID) FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total passengers based on gender
SELECT SUM(CASE WHEN Gender = 'male' THEN 1 ELSE 0 END) as Male_count,
       SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) as Female_count
FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total passengers based on satisfaction
SELECT SUM(CASE WHEN satisfaction = 'satisfied' THEN 1 ELSE 0 END) as satisfied_count,
       SUM(CASE WHEN satisfaction = 'neutral or dissatisfied' THEN 1 ELSE 0 END) as neutral_or_dissatisfied_count
FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total passengers of each travel type 
SELECT SUM(CASE WHEN "Type of travel" = 'Business travel' THEN 1 ELSE 0 END) as total_business_travel,
       SUM(CASE WHEN "Type of travel" = 'Personal Travel' THEN 1 ELSE 0 END) as total_personal_travel
FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total passengers of each passenger class 
SELECT SUM(CASE WHEN Class = 'Eco' THEN 1 ELSE 0 END) as total_eco,
       SUM(CASE WHEN Class = 'Eco Plus' THEN 1 ELSE 0 END) as total_eco_plus,
	   SUM(CASE WHEN Class = 'Business' THEN 1 ELSE 0 END) as total_business 
FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total passengers of each customer type
SELECT SUM(CASE WHEN "Customer type" = 'disloyal Customer' THEN 1 ELSE 0 END) as total_disloyal,
	   SUM(CASE WHEN "Customer type" = 'Loyal Customer' THEN 1 ELSE 0 END) as total_loyal
FROM [airline_satisfaction1].[dbo].[airline_dataset]

-- Total passengers & Average arrival delay with age less than 20
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Arrival Delay in Minutes" as float)),2) as avg_arrival_delay,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age < 20
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average arrival delay with age between 20 until 30
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Arrival Delay in Minutes" as float)),2) as avg_arrival_delay,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age BETWEEN 20 AND 30
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average arrival delay with age greater than 30
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Arrival Delay in Minutes" as float)),2) as avg_arrival_delay,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age > 30
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average departure delay with age less than 20
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Departure Delay in Minutes" as float)),2) as avg_departure_delay,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age < 20
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average departure delay with age between 20 until 30
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Departure Delay in Minutes" as float)),2) as avg_departure_delay,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age BETWEEN 20 AND 30
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average departure delay with age greater than 30
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Departure Delay in Minutes" as float)),2) as avg_departure_delay,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age > 30
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average flight distance with age less than 20
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Flight Distance" as float)),2) as avg_flight_distance,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age < 20
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average flight distance with age between 20 until 30
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Flight Distance" as float)),2) as avg_flight_distance,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age BETWEEN 20 AND 30
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Total passengers & Average flight distance with age greater than 30
SELECT Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction,
			ROUND(AVG(CAST("Flight Distance" as float)),2) as avg_flight_distance,
			COUNT(ID) as total_passengers
FROM [airline_satisfaction1].[dbo].[airline_dataset]
WHERE Age > 30
GROUP BY Class, 
			"Customer Type", 
			"Type of travel",
			Gender,
			satisfaction
ORDER BY total_passengers DESC

-- Flight rate service by passengers
SELECT AVG(CAST("Inflight wifi service" as tinyint)) as avg_inflightwifi, 
	   AVG(CAST("Departure arrival time convenient" as tinyint)) as avg_timeconvenient,
	   AVG(CAST("Ease of online booking" as tinyint)) as avg_easebooking,
	   AVG(CAST("Gate location" as tinyint)) as avg_gatelocation,
	   AVG(CAST("Food and drink" as tinyint)) as avg_foodndrink,
	   AVG(CAST("Online boarding" as tinyint)) as avg_onlineboarding,
	   AVG(CAST("Seat comfort" as tinyint)) as avg_seatcomfort,
	   AVG(CAST("Inflight entertainment" as tinyint)) as avg_inflightent,
	   AVG(CAST("On-board service" as tinyint)) as avg_onboard,
	   AVG(CAST("Leg room service" as tinyint)) as avg_legroom,
	   AVG(CAST("Baggage Handling" as tinyint)) as avg_baggagehandling,
	   AVG(CAST("Checkin service" as tinyint)) as avg_checkinservice,
	   AVG(CAST("Inflight service" as tinyint)) as avg_inflightservice,
	   AVG(CAST("Cleanliness" as tinyint)) as avg_cleanliness
FROM [airline_satisfaction1].[dbo].[airline_dataset]
