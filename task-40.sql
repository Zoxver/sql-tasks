SELECT maker, type FROM Product GROUP BY maker, type HAVING COUNT(model) > 1
AND maker NOT IN (
    SELECT maker
    FROM Product
    GROUP BY maker
    HAVING COUNT(DISTINCT type) > 1
)