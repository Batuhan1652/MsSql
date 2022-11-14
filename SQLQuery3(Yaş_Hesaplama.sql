Select * From Customers_Tables
Update Customers_Tables

Set Age= DATEDIFF(Year,Birth_Date,GETDATE())

Update Customers_Tables Set Age= Age+1
Update Customers_Tables Set Age= Age-1

/* Yukarýdaki set age komutuyla müþterielrin  yaþlarýný hesapladýk. Age columu boþtu ve biz bu columa þu komutu verdik yaþý þimdigi günümüz
tarihinden birt_Date'yi çýkararak hesapla ve bu sayede tüm müþerilerin yaþarý hesaplandý*/
