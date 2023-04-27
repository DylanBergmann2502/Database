SELECT distinct CustomerName AS [Customer Name], Notes from KCC.dbo.Customers

SELECT TOP(3) * from dbo.Customers

SELECT TOP(3) *		from dbo.Customers 
WHERE CustomerName = 'Tres Delicious' AND (Country = 'United States' OR Country = 'France')

--this returns all customers in WA state
/*this returns all customers in WA state*/

