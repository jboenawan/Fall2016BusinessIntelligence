Use CheesecakeFactoryDB 
Go

/*1*/

select * 
from Customer;

select * 
from Sales;

select * 
from Dish;

select * 
from Employee;

select * 
from Ingredients;

select * 
from IngredientDish;

select * 
from Job;

select * 
from SalesDetail;

select * 
from Store;

select * 
from Supplier;


/*2*/
Select SalesDate, max(SalesTotalAmount) as Max_Sales_Total_Amount
from Sales
where SalesDate like '2016-08-05 %'
group by SalesDate;


/*3*/
Select sum(SalesTotalAmount), sa.SalesDate, s.StoreId, s.Address, s.State
from sales as sa
inner join Store as s
on sa.StoreID = s.StoreID
where s.state = 'Providence'
group by sa.SalesDate, s.StoreID, s.Address, s.State;


/*4*/


/*5*/
select avg(SalesTotalAmount) as Avg_of_TotalAmount from Sales;

select SalesID, SalesTotalAmount
from Sales
where SalesTotalAmount > (select avg(SalesTotalAmount) as Avg_of_TotalAmount 
from Sales)
order by SalesTotalAmount asc;