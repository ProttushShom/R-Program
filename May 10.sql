use northwind;
#3 Using the WHERE clause to check for equality or inequality
3. select * from orders;
select orderdate, shippeddate, customerid, freight from orders
where orderdate = '1997-05-19';

4.select * from employees;
select firstname, lastname, country from employees
where country <> 'USA';

#4. Using the WHERE clause to check for greater or less than;

1.select * from orders; 
select employeeid, customerid, orderdate, shippeddate from orders 
where shippeddate > orderdate;

2. select orderid, freight from orders
where freight > 500;

3. select * from products;
select productname, unitsinstock, unitsonorder, reorderlevel from products
where reorderlevel >= unitsinstock;

#5 Checking for NULL
1. select companyname, contactname, fax from customers
where fax is not null; 

2. select * from employees;
select firstname, lastname from employees
where reportsto is null;

