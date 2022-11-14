select * from Customers_Tables
order by Birth_Date  
/* order by sýralamaya yarar yukarýdaki komut bize en þalý olandan en gence doðru getirdi asc dersek a'dan z'ye desc dersek z'den a'ya þeklinde sýralar*/

select * from Customers_Tables
order by City asc, Birth_Date desc

select TOP 5* from Customers_Tables  /* Bize ilk 5 deðeri çevirdi*/

select TOP 10* from Customers_Tables
where City = 'Ýstanbul'
order by Age

select TOP 10 percent*  from Customers_Tables /* burda da yüzde 10'nu aldý */
where City = 'Ýstanbul'
order by Age