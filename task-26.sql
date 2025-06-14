WITH PCAndLaptopPrice AS (
SELECT price FROM PC JOIN Product ON PC.model=Product.model WHERE Product.maker='A' UNION ALL SELECT price FROM Laptop JOIN Product ON Laptop.model=Product.model WHERE Product.maker='A')
SELECT AVG(price) FROM PCAndLaptopPrice;