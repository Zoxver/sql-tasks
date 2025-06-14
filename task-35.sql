select model, type from Product where model NOT LIKE '%[^0-9]%' OR model NOT LIKE '%[^a-z]%';

SELECT model, type
FROM Product
WHERE 
    model ~ '^[0-9]+$'
    OR 
    model ~ '^[a-zA-Z]+$';