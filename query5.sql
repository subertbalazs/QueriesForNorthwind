SELECT 
    ShippedDate AS YearOfIncome,
    CategoryName,
    ProductName,
    SUM(Quantity * (OrderDetails.UnitPrice) * (1 - Discount)) AS ProductSales
FROM
    Orders
        JOIN
    OrderDetails ON OrderDetails.OrderID = Orders.OrderID
        JOIN
    Products ON Products.ProductID = OrderDetails.ProductID
        JOIN
    Categories ON Categories.CategoryID = Products.ProductID
GROUP BY ProductName AND YearOfIncome;
