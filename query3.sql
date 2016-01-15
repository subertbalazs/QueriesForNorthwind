SELECT 
    a.ShipName,
    a.ShipAddress,
    a.ShipCity,
    a.ShipRegion,
    a.ShipPostalCode,
    a.ShipCountry,
    b.CustomerId,
    b.CompanyName,
    b.Address,
    b.City,
    b.Region,
    b.PostalCode,
    b.Country,
    CONCAT(c.FirstName, ' ', c.LastName) AS Salesperson,
    a.OrderId,
    a.OrderDate,
    a.RequiredDate,
    a.ShippedDate,
    d.CompanyName,
    e.ProductId,
    e.ProductName,
    f.UnitPrice,
    f.Quantity,
    f.Discount,
    (f.Quantity * (f.UnitPrice) * (1 - f.Discount)) AS Total,
    a.Freight
FROM
    Orders AS a
        INNER JOIN
    Customers AS b ON a.CustomerId = b.CustomerId
        INNER JOIN
    Employees AS c ON a.EmployeeId = c.EmployeeId
        INNER JOIN
    Shippers AS d ON a.ShipVia = d.ShipperId
        INNER JOIN
    OrderDetails AS f ON a.OrderId = f.OrderId
        INNER JOIN
    Products AS e ON f.ProductId = e.ProductId
ORDER BY CustomerID , OrderDate , ProductId