Select * From Customers_Tables
Update Customers_Tables

Set Age= DATEDIFF(Year,Birth_Date,GETDATE())

Update Customers_Tables Set Age= Age+1
Update Customers_Tables Set Age= Age-1

/* Yukarıdaki set age komutuyla müşterielrin  yaşlarını hesapladık. Age columu boştu ve biz bu columa şu komutu verdik yaşı şimdiki günümüz
tarihinden Birth_Date'yi çıkararak hesapla ve bu sayede tüm müşerilerin yaşları hesaplandı*/
