SELECT 
    ProductName, UnitPrice
FROM
    Products
WHERE
    UnitPrice > (SELECT 
            AVG(UnitPrice)
        FROM
            Products)
order BY UnitPrice;