select * from Customers_Tables
order by Birth_Date  
/* order by s�ralamaya yarar yukar�daki komut bize en �al� olandan en gence do�ru getirdi asc dersek a'dan z'ye desc dersek z'den a'ya �eklinde s�ralar*/

select * from Customers_Tables
order by City asc, Birth_Date desc

select TOP 5* from Customers_Tables  /* Bize ilk 5 de�eri �evirdi*/

select TOP 10* from Customers_Tables
where City = '�stanbul'
order by Age

select TOP 10 percent*  from Customers_Tables /* burda da y�zde 10'nu ald� */
where City = '�stanbul'
order by Age