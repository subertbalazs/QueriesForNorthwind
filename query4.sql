SELECT 
    OrderID,
    SUM(Quantity * (OrderDetails.UnitPrice) * (1 - Discount)) AS OrderTotal
FROM
    OrderDetails
GROUP BY OrderID;