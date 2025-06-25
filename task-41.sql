WITH product_prices AS (
    SELECT p.maker, pc.price 
    FROM Product p JOIN PC pc ON p.model = pc.model
    UNION ALL
    SELECT p.maker, l.price 
    FROM Product p JOIN Laptop l ON p.model = l.model
    UNION ALL
    SELECT p.maker, pr.price 
    FROM Product p JOIN Printer pr ON p.model = pr.model
)
SELECT 
    maker,
    CASE 
        WHEN SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) > 0 THEN NULL
        ELSE MAX(price)
    END AS max_price
FROM 
    product_prices
GROUP BY 
    maker;