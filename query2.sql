SELECT City, CompanyName, ContactName, 'Supplier' AS Relationship FROM Suppliers
UNION
SELECT City, CompanyName, ContactName, 'Customer' AS Relationship FROM Customers
ORDER BY City, ContactName;


