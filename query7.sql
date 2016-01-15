SELECT 
    CategoryName, ProductName, QuantityPerUnit, UnitsInStock
FROM
    Products
        JOIN
    Categories ON Categories.CategoryID = Products.CategoryID
WHERE
    Discontinued = 0
ORDER BY CategoryName, ProductName;