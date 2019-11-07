-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select c.CategoryName as Category, p.ProductName as Product
from [Product] as p
join Category as c on p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Order.Id, Shipper.CompanyName, Order.OrderDate
FROM Order
INNER JOIN Shipper ON Order.ShipperId = Shipper.ShipperId
WHERE OrderDate < "2012-09-08";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Product.ProductName, OrderDetail.Quantity, Product.Id
FROM Product
INNER JOIN OrderDetail ON Product.Id = OrderDetail.ProductId
WHERE OrderID='10251'
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.OrderID as 'Order ID', c.ContactName as 'Customer Name', e.LastName as 'Employee Last Name'
from Order as o
join Customers as c 
on c.CustomerID = o.CustomerID
join Employees as e 
on e.EmployeeID = o.EmployeeID;