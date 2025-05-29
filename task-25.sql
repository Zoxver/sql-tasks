WITH MinRamPC AS (
    SELECT model, speed FROM PC WHERE ram=(SELECT MIN(ram) FROM PC)
)
SELECT DISTINCT maker FROM Product WHERE type='Printer' AND maker IN (SELECT maker FROM Product JOIN MinRamPC ON MinRamPC.model=Product.model WHERE MinRamPC.speed IN (SELECT MAX(MinRamPC.speed) FROM MinRamPC));