select * from Customers_Tables
Where City = 'Bursa'  /* Bu kod Bursa'da yaþayan herkezi çaðýrdý */


select * from Customers_Tables
Where City = 'Bursa' AND District = 'Orhangazi'  /* Bu kod sadece Bursa, Orhangazi'de yaþayanlarý çaðýrdý */

select * from Customers_Tables  /* Bu kod ise Bursa'da yaþayan fakat Orhangazi'de yaþamayan insanlarý çaðýrdý*/
Where  City =  'Bursa' AND District <> 'Orhangazi'

select * from Customers_Tables
where Age>25

select * from Customers_Tables
where Age<=25

select * from Customers_Tables
where Age
between 20 and 25

select * from Customers_Tables
where Customer_Name Like 'Rümeysa%' /* rümeysa ile baþlýyanlarý getir demiþ olduk o yüzde ona yarýyor */

select * from Customers_Tables
where Customer_Name Like '%ÝNCE%' /* Ýsmi veya soyisminde ince olanlarý getiriyor fakat illa ince olmak zorunead deðil */

select * from Customers_Tables
where Customer_Name Like '%Örnek' /* sonu örnek ile biter diyenleri getir demiþ olduk o yüzde ona yarýyor */

select * from Customers_Tables
where City= 'Isparta'
and District in ('Uluborlu', 'Yalvaç') /* ýspartada ve uluborlu,yalvaçta yaþayan müþterileri getirdi */

select * from Customers_Tables
where City= 'Isparta'
and District not in ('Uluborlu', 'Yalvaç') /* ýspartada ve uluborlu,yalvaçta dýþýnda yaþayan müþterileri getirdi */

select * from Customers_Tables
where City= 'Isparta'
and District not in ('Uluborlu', 'Yalvaç')
and Gender = 'K'

Update Customers_Tables Set Gender = 'Erkek'
Where Gender = 'E'  /* Tüm E yazan þeyleri Erkek olarak deðiþtirdik */

select * from Customers_Tables

delete from Customers_Tables where ID = 1 /* ID'si 1 olaný siler */

delete from Customers_Tables where Customer_Name like 'Serhat%' /* tüm serhat ile baþlayanlarý siler */



