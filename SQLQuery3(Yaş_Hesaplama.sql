Select * From Customers_Tables
Update Customers_Tables

Set Age= DATEDIFF(Year,Birth_Date,GETDATE())

Update Customers_Tables Set Age= Age+1
Update Customers_Tables Set Age= Age-1

/* Yukar�daki set age komutuyla m��terielrin  ya�lar�n� hesaplad�k. Age columu bo�tu ve biz bu columa �u komutu verdik ya�� �imdigi g�n�m�z
tarihinden birt_Date'yi ��kararak hesapla ve bu sayede t�m m��erilerin ya�ar� hesapland�*/
