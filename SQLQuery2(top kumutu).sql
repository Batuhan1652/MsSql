select * from Customers_Tables
order by Birth_Date  
/* order by sıralamaya yarar yukarıdaki komut bize en yaşlı olandan en gence doğru getirdi asc dersek a'dan z'ye desc dersek z'den a'ya şeklinde sıralar*/

select * from Customers_Tables
order by City asc, Birth_Date desc

select TOP 5* from Customers_Tables  /* Bize ilk 5 değeri çevirdi*/

select TOP 10* from Customers_Tables
where City = 'İstanbul'
order by Age

select TOP 10 percent*  from Customers_Tables /* burda da yüzde 10'nu aldı */
where City = 'İstanbul'
order by Age
