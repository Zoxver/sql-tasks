SELECT DISTINCT p.maker, l.speed FROM Product as p JOIN Laptop as l ON p.model=l.model WHERE l.hd >= 10;
