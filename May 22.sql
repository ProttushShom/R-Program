#6 Using WHERE and ORDER BY Together
1.select companyname, contactname, fax from customers
where fax is not null
order by companyname asc;

2. select companyname, contactname, city from customers
where city like 'A%' or city like 'B%'
order by contactname desc;

#7 More SELECTs with WHERE

1. select firstname, lastname, birthdate from employees
where birthdate between '1950-01-01' and '1959-12-31';

2. select * from products;
select * from suppliers;
select supplierid from suppliers
where companyname like 'Exotic%' or companyname like 'Grandma%' or 
companyname like 'tokyo%';

select productname, supplierid from products
where supplierid in (1,3,4);

4. select * from customers;
select companyname, contactname, contacttitle from customers
where contacttitle not like '%sales%';

#8 Writing SELECTs with Multiple Conditions

1. select * from employees;
select firstname, lastname, city from employees
where city <> 'Seattle' ;

2. select companyname, contacttitle, city, country from customers
where country in ('Mexico', 'Spain') and city <> 'Madrid';

3. select firstname, lastname from employees
where title like 'sales rep%' and titleofcourtesy = 'Mr.';

4. select firstname, lastname, city from employees
where city in ('Seattle', 'Redmond');

5. select firstname, lastname, city from employees
where city in ('Seattle', 'Redmond') and title like 'sales rep%';

