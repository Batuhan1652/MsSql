select * from Customers_Tables
Where City = 'Bursa'  /* Bu kod Bursa'da yaşayan herkezi çağırdı */


select * from Customers_Tables
Where City = 'Bursa' AND District = 'Orhangazi'  /* Bu kod sadece Bursa, Orhangazi'de yaşayanları çağırdı */

select * from Customers_Tables  /* Bu kod ise Bursa'da yaşayan fakat Orhangazi'de yaşamayan insanları çağırdı*/
Where  City =  'Bursa' AND District <> 'Orhangazi'

select * from Customers_Tables
where Age>25

select * from Customers_Tables
where Age<=25

select * from Customers_Tables
where Age
between 20 and 25

select * from Customers_Tables
where Customer_Name Like 'Rümeysa%' /* rümeysa ile başlıyanları getir demiş olduk o yüzde ona yarıyor */

select * from Customers_Tables
where Customer_Name Like '%İNCE%' /* İsmi veya soyisminde ince olanları getiriyor fakat illaki ince olmak zorunead değil */

select * from Customers_Tables
where Customer_Name Like '%Örnek' /* sonu örnek ile biter diyenleri getir demiş olduk o yüzde ona yarıyor */

select * from Customers_Tables
where City= 'Isparta'
and District in ('Uluborlu', 'Yalvaç') /* Isparta'da, Uluborlu ve Yalvaç'ta yaşayan müşterileri getirdi */

select * from Customers_Tables
where City= 'Isparta'
and District not in ('Uluborlu', 'Yalvaç') /* Isparta'da, Uluborlu ve Yalvaç dışında yaşayan müşterileri getirdi */

select * from Customers_Tables
where City= 'Isparta'
and District not in ('Uluborlu', 'Yalvaç')
and Gender = 'K'

Update Customers_Tables Set Gender = 'Erkek'
Where Gender = 'E'  /* Tüm E yazan şeyleri Erkek olarak değiştirdik */

select * from Customers_Tables

delete from Customers_Tables where ID = 1 /* ID'si 1 olanı siler */

delete from Customers_Tables where Customer_Name like 'Serhat%' /* tüm Serhat ile başlayanları siler */



