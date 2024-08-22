SELECT
    eu.unique_id,
    e.name
FROM 
    EmployeeUNI eu
RIGHT JOIN 
    Employee e
ON
    e.id = eu.id
