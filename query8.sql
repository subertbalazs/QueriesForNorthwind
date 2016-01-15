SELECT 
    CategoryName, ProductName, MIN(UnitPrice) AS CheapestProduct
FROM
    Products
        JOIN
    Categories ON Categories.CategoryID = Products.CategoryID
WHERE
    UnitPrice = (SELECT MIN(UnitPrice)) 
GROUP BY CategoryName;