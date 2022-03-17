select destination , passanger 
FROM dataset_1;

Select destination , passanger 
from dataset_1
LIMIT 7;

SELECT DISTINCT passanger 
from dataset_1;

SELECT *
from dataset_1
where passanger = 'Kid(s)';

SELECT *
FROM dataset_1
WHERE passanger = 'Partner'
ANd expiration  = '1d'

SELECT *
From dataset_1
WHERE passanger = 'Alone'
OR weather = 'Sunny'
ORDER BY coupon  DESC 

SELECT 
destination, 
gender,
age,
coupon as 'Rewards' --This is name change command
From dataset_1;

SELECT *
FROM dataset_1 d 
Group BY destination;

SELECT passanger  
FROM dataset_1
Group By passanger 
;

SELECT occupation
FROM dataset_1
GROUP BY occupation;

SELECT weather, 
AVG(temperature) AS 'avg_temp'
FROM dataset_1
GROUP BY weather;

SELECT weather, 
COUNT(temperature) AS 'count_temp'
FROM dataset_1
GROUP BY weather;

SELECT weather, 
MAX(temperature) AS 'max_temp'
FROM dataset_1
GROUP BY weather;

SELECT occupation
FROM dataset_1
GROUP BY occupation
HAVING occupation = 'Student';

SELECT * 
FROM dataset_1
UNION 
SELECT * 
FROM table_to_union

SELECT DISTINCT destination
FROM (
SELECT * 
FROM dataset_1
UNION 
SELECT * 
FROM table_to_union);

SELECT destination, passanger
FROM (SELECT * FROM dataset_1 WHERE passanger = 'Alone');

SELECT *
FROM dataset_1
WHERE weather LIKE 'Sun%';

SELECT occupation
FROM dataset_1
WHERE occupation IN ('Sales & Related', 'Management');

SELECT 
	destination, 
	weather, 
	AVG(temperature) OVER (PARTITION BY weather) AS 'avg_temp_by_weather'
FROM dataset_1;

SELECT 
	destination, 
	weather, 
	ROW_NUMBER() OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1;

SELECT 
	destination, 
	weather, 
	RANK() OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1;





