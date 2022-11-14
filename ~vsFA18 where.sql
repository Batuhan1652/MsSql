select * from Customers_Tables
Where City = 'Bursa'  /* Bu kod Bursa'da ya�ayan herkezi �a��rd� */


select * from Customers_Tables
Where City = 'Bursa' AND District = 'Orhangazi'  /* Bu kod sadece Bursa, Orhangazi'de ya�ayanlar� �a��rd� */

select * from Customers_Tables  /* Bu kod ise Bursa'da ya�ayan fakat Orhangazi'de ya�amayan insanlar� �a��rd�*/
Where  City =  'Bursa' AND District <> 'Orhangazi'

select * from Customers_Tables
where Age>25

select * from Customers_Tables
where Age<=25

select * from Customers_Tables
where Age
between 20 and 25

select * from Customers_Tables
where Customer_Name Like 'R�meysa%' /* r�meysa ile ba�l�yanlar� getir demi� olduk o y�zde ona yar�yor */

select * from Customers_Tables
where Customer_Name Like '%�NCE%' /* �smi veya soyisminde ince olanlar� getiriyor fakat illa ince olmak zorunead de�il */

select * from Customers_Tables
where Customer_Name Like '%�rnek' /* sonu �rnek ile biter diyenleri getir demi� olduk o y�zde ona yar�yor */

select * from Customers_Tables
where City= 'Isparta'
and District in ('Uluborlu', 'Yalva�') /* �spartada ve uluborlu,yalva�ta ya�ayan m��terileri getirdi */

select * from Customers_Tables
where City= 'Isparta'
and District not in ('Uluborlu', 'Yalva�') /* �spartada ve uluborlu,yalva�ta d���nda ya�ayan m��terileri getirdi */

select * from Customers_Tables
where City= 'Isparta'
and District not in ('Uluborlu', 'Yalva�')
and Gender = 'K'

Update Customers_Tables Set Gender = 'Erkek'
Where Gender = 'E'  /* T�m E yazan �eyleri Erkek olarak de�i�tirdik */

select * from Customers_Tables

delete from Customers_Tables where ID = 1 /* ID'si 1 olan� siler */

delete from Customers_Tables where Customer_Name like 'Serhat%' /* t�m serhat ile ba�layanlar� siler */



