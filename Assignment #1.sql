use AdventureWorks2012

select Name, ProductNumber, ListPrice
from Production.Product 
where ListPrice > 500
order by ListPrice asc; 

select st.Name , sum(s.TotalDue) as TotalSales
from Sales.SalesOrderHeader as s
inner join Sales.SalesTerritory as st 
on s.TerritoryID = st.TerritoryID
where s.OrderDate between '2007-08-01' and '2007-08-31'
group by st.Name
order by st.Name asc;

Select v.Name, count(ProductID) as Number_of_Products_Supplied
from Purchasing.Vendor as v
inner join Purchasing.ProductVendor as pv
on v.BusinessEntityID = pv.BusinessEntityID 
group by v.name
having count(ProductID) >3
order by count( ProductID) desc;


