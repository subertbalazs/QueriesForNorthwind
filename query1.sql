SELECT 
    OrderID,
    OrderDetails.ProductID,
    ProductName,
    OrderDetails.UnitPrice,
    Quantity,
    Discount,
    (Quantity * OrderDetails.UnitPrice * (1 - Discount)) AS Total
FROM
    OrderDetails
        JOIN
    Products ON OrderDetails.ProductID = Products.ProductID ORDER BY OrderID, OrderDetails.ProductID;
    