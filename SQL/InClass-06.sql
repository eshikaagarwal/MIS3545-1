use AdventureWorks2012;

/*1. Using the HumanResource.Employee table, provide a count of the number of employees by job title.  The query should consider only current employees (the CurrentFlag must equal 1).  */

SELECT JobTitle, COUNT(BusinessEntityID) as Number_of_Employees
FROM HumanResources.Employee
WHERE CurrentFlag = 1
Group by JobTitle;

/* example in PPT*/
SELECT TerritoryID, 
		OrderDate, 
		Count(SalesOrderID) as Number_of_Orders, 
		Sum(TotalDue) as Amount_Due
FROM Sales.SalesOrderHeader
WHERE OrderDate < '2007-01-01'  
Group by TerritoryID, 
		 OrderDate
Having Sum(TotalDue) > 5000;


/*2. Modify the query you created in Activity 1 so that the output shows only those job titles for which there is more than 1 employee.  */
SELECT JobTitle, COUNT(BusinessEntityID) as Number_of_Employees
FROM HumanResources.Employee
WHERE CurrentFlag = 1
Group by JobTitle
Having COUNT(BusinessEntityID) > 1
ORDER BY Number_of_Employees DESC;
