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





