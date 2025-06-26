use northwind;

#Working with Aggregate Functions

3. select count(employeeid) from employees;

4. select productid, sum(quantity) as UnitsOrdered from order_details
where productid = 3
group by productid;

5. select min(hiredate) as Earliest, max(hiredate) as latest from employees;

6. select count(employeeid) as NumOfEmp, city from employees
group by city
having NumOfEmp >= 2;

8. select count(title) as NumOfSalesRep, city from employees
where title like 'sales rep%'
group by city
having NumOfSalesRep >= 2;

#Using Joins

1. select * from orders;

select employees.employeeid, employees.firstname, orders.orderid
from orders
join employees on (orders.employeeid = employees.employeeid);

2. select orders.orderid, customers.companyname, employees.firstname, employees.lastname
from employees
join orders on (employees.employeeid = orders.employeeid)
join customers on (orders.customerid = customers.customerid)
where orders.orderdate > '1998-01-01' and orders.shippeddate > orders.requireddate;

4. select products.productname, sum(order_details.quantity) as TotalUnits
from order_details
join products on (order_details.productid = products.productid)
group by products.productname
having TotalUnits < 200;

5. select customers.companyname, count(orders.orderid) as NumOfOrders
from orders
join customers on (orders.customerid = customers.customerid)
where orders.orderdate >= '1996-12-31'
group by customers.companyname
having NumOfOrders > 15;

6.select customers.companyname, orders.orderid, 
sum((order_details.unitprice*order_details.quantity)*(1-order_details.discount)) as TotalPrice
from order_details
join orders on (order_details.orderid = orders.orderid)
join customers on (orders.customerid = customers.customerid)
group by customers.companyname
having TotalPrice > 10000;
 