#Calculating Fields
1. select * from order_details;

select orderid, unitprice, quantity, discount, SUM((unitprice*quantity)*(1-discount)) as TotalPrice
from order_details
group by orderid;

2. select * from employees;

#CONCATENATION: it assembles multiple data from multiple attributes with in one row;

select concat(FirstName, ' ' ,lastname, ' ' ,'can be reached at x', '' ,extension) as ContactInfo
from employees; 

#Working with Aggregate Functions
1. select * from order_details;

select productid, sum(quantity) as TotalUnits from order_details
group by productid
having TotalUnits < 200;

2. select * from orders;

select customerid, count(orderid) as NumOfOrders from orders
group by customerid
having NumOfOrders > 15;
