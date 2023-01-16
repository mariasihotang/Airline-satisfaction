/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Customer Type]
      ,[Class]
      ,[Gender]
      ,[Age]
      ,[Type of Travel]
      ,[Flight Distance]
      ,[Checkin service]
      ,[Departure Delay in Minutes]
      ,[Arrival Delay in Minutes]
      ,[satisfaction]
  FROM [airline_satisfaction].[dbo].[Dataset7_Airline_Satisfaction]

-- Total of men and women of passengers
SELECT SUM(CASE WHEN Gender = 'male' THEN 1 ELSE 0 END) as Male_count,
       SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) as Female_count
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]

-- Total of satisfied and dissatisfied passengers
SELECT SUM(CASE WHEN satisfaction = 'satisfied' THEN 1 ELSE 0 END) as satisfied_count,
       SUM(CASE WHEN satisfaction = 'dissatisfied' THEN 1 ELSE 0 END) as dissatisfied_count
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]

-- Total of each passenger class 
SELECT SUM(CASE WHEN Class = 'Eco' THEN 1 ELSE 0 END) as eco_count,
       SUM(CASE WHEN Class = 'Eco Plus' THEN 1 ELSE 0 END) as eco_plus_count,
	   SUM(CASE WHEN Class = 'Business' THEN 1 ELSE 0 END) as business_count
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]

-- Arrival delay & Departure delay by passenger class 
SELECT AVG(CAST("Departure Delay in Minutes" as float)) as avg_departure, AVG(CAST("Arrival Delay in Minutes" as float)) as avg_arrival
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
WHERE [Class] = 'Eco'

SELECT AVG(CAST("Departure Delay in Minutes" as float)) as avg_departure, AVG(CAST("Arrival Delay in Minutes" as float)) as avg_arrival
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
WHERE [Class] = 'Eco Plus'

SELECT AVG(CAST("Departure Delay in Minutes" as float)) as avg_departure, AVG(CAST("Arrival Delay in Minutes" as float)) as avg_arrival
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
WHERE [Class] = 'Business'

-- Average flight distance by passenger class
SELECT AVG(CAST("Flight Distance" as float)) as avg_flight_distance
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
WHERE [Class] = 'Eco'

SELECT AVG(CAST("Flight Distance" as float)) as avg_flight_distance
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
WHERE [Class] = 'Eco Plus'

SELECT AVG(CAST("Flight Distance" as float)) as avg_flight_distance
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
WHERE [Class] = 'Business'

-- Age distribution of passengers
SELECT Age, COUNT("Age") as total
FROM [airline].[dbo].[Dataset7_Airline_Satisfaction]
GROUP BY Age 
ORDER BY total DESC