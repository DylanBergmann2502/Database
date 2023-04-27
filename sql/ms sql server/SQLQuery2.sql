/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [OrderID] ,[OrderDate] ,[OrderTotal], CustomerName, Phone, c.CustomerID
  FROM dbo.Orders o
  RIGHT JOIN dbo.Customers c ON o.CustomerID = c.CustomerID
  ORDER BY OrderTotal DESC

SELECT * from KCC.dbo.Orders
WHERE OrderDate >= Dateadd(month, -12, getdate())