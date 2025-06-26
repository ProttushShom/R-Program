use Northwind;
select CategoryID, Description from categories;
select CategoryName, Description from categories
order by CategoryName;
select ContactName, CompanyName, ContactTitle, Phone from customers
order by Phone desc;
select * from customers;
select CompanyName, ContactName from customers
where City like '%Aires';
select * from products;
select ProductName, UnitPrice, QuantityPerUnit from products
where UnitsInStock < 1;
select * from orders;
select OrderDate, ShippedDate, CustomerID, Freight from orders
where OrderDate = '1997-05-19%';
select * from employees;
select FirstName, LastName, Country from employees
where Country <> 'USA';
select EmployeeID, OrderID, CustomerID, OrderDate, ShippedDate from orders
where ShippedDate > OrderDate;
select OrderID, CustomerID, Freight from orders
where Freight > 500;
select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel from products
where UnitsInStock = ReorderLevel;
select CompanyName, ContactName, Fax, City from customers
where Fax is not null
order by City;
select FirstName, LastName, ReportsTo, Title, Salary from employees
where ReportsTo is null;
select CompanyName, ContactName, City from customers
where City like "B%" or City like "A%";
select TitleOfCourtesy, FirstName, LastName, City from employees
where City in ('Seattle', 'Redmond');
select CompanyName, ContactName, City from customers
where city in ('Seattle', 'Redmond');
select OrderID, UnitPrice, Quantity, Discount, ((UnitPrice*Quantity)-Discount) as TotalPrice from order_details;
select concat(FirstName, " ", LastName, " ", "can be reached at", " x",Extension) as contactinfo
from employees;

categories
where ShipVia in (3, 2) and ShippedDate is not null
order by ShipVia asc;

select ProductID, ProductName from products
where CategoryID in (7, 8)
group by ProductID;

select * from employees
where HireDate between '1992-01-01' and '1992-12-31';

select ShipCity from orders
where ShipCountry = 'USA';

select employees.EmployeeID, employees.FirstName, orders.OrderID from orders
join employees on (employees.EmployeeID = orders.EmployeeID);


#Fimal#
select CustomerID, count(OrderID) as NumOrders from orders
group by CustomerID
having NumOrders > 15;

select ProductID, count(OrderID) as TotalUnitsOrdered from order_details
where ProductID = 3
group by ProductID;

select max(HireDate) as LatestHireDate, min(HireDate) as EarliestHireDate from employees;

Select orders.OrderID, employees.FirstName, employees.LastName from employees
join orders on (orders.EmployeeID = employees.EmployeeID);

select * from orders;

Select orders.OrderID, employees.FirstName, employees.LastName, customers.CompanyName
from orders
join employees on (Orders.EmployeeID = employees.EmployeeID)
join customers on (Customers.CustomerID = Orders.CustomerID)
where orders.OrderDate > '1998-01-01'
order by customers.CompanyName;

Select orders.OrderID, employees.FirstName, Employees.LastName from employees
join orders on (orders.EmployeeID = Employees.EmployeeID)
where orders.ShippedDate > orders.RequiredDate;

Select products.ProductName, count(order_details.Quantity) as TotalUnits from order_details
join products on (products.ProductID = order_details.ProductID)
group by products.ProductName;

select products.ProductName, sum(order_details.Quantity) as TotalUnits
from order_details
join products on (products.ProductID = order_details.ProductID)
group by products.ProductName
having TotalUnits < 200;

select * from orders;

select customers.CompanyName, count(orders.OrderID) as NumOrders
from orders
join customers on (customers.CustomerID = orders.CustomerID)
where OrderDate >= '1996-12-31'
group by customers.CompanyName
having NumOrders > 15;
















