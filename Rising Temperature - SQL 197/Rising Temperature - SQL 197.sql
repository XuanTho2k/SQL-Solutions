-- Solution 1: Simple Join
SELECT
    w1.id
FROM 
    Weather w1
JOIN
    Weather w2
ON
    w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE 
    w1.temperature > w2.temperature


-- Solution 2: Subquery
SELECT 
    id
FROM
    Weather w1
WHERE 
    temperature > (
        SELECT temperature
        FROM Weather w2
        WHERE w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
    )


-- Solution 3: DateOff Simple 
SELECT 
    w1.id
FROM 
    Weather w1,
    Weather w2
WHERE
    DATEDIFF(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature
