use AdventureWorks2012;

/*1. Find out info of all the customers */

select *
from sales.Customer;

/*2. Find out info of all the sales orders*/

select *
from Sales.SalesOrderHeader;

/*3. Find sales info about productID 843*/
select *
from sales.SalesOrderDetail
where ProductID = 843;

/*4.  sales info of all the products of which unitprice is between 100 and 200*/
SELECT *
FROM sales.SalesOrderDetail
/*where UnitPrice between 100 and 200;*/
where UnitPrice > 100 AND UnitPrice < 200;

/*5. all the store names*/
SELECT Distinct Name
FROM sales.Store;
`
/* find out store names that contain 'Bike'*/
SELECT Name
FROM Sales.Store
/*WHERE Name Like '%Bikes' OR Name Like 'Bike%';*/
WHERE Name like '%Bike%';

