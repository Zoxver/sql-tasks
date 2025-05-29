WITH Models AS (
    SELECT model, price
    FROM PC
    UNION
    SELECT model, price
    FROM Laptop
    UNION
    SELECT model, price
    FROM Printer
)
SELECT model FROM Models WHERE price=(SELECT MAX(price) FROM Models);