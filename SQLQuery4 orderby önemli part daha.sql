-- Maðazalarýn Müþteri Sayýsýný Hesaplama --

select BRANCH ,count(DISTINCT CLIENTNAME) from SALES
group by BRANCH

-- Peki 1 müþteri hem bursa hem balýkesir  þubesinden alýþveriþ yaptý ise ve ismi 2 kere yazdýldý ise?? --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
group by CLIENTNAME -- bu kod býze býr müþterinin kaç tane farklý maðazaya gittiðini gösteriyor--

select DISTINCT BRANCH from SALES
where CLIENTNAME = 'Abdulkadir AÐZIKÜÇIK' -- bu kod bize andülkadirin tr'de hangi maðazalara gittiðnin gösteriyorr --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
where CLIENTNAME = 'Abdulkadir AÐZIKÜÇIK'
group by CLIENTNAME -- bu kod sadece abdülkadirin kaç tane maðazaya gittiðnii söylüyor --

-- 5'den fazla magazaya giden müþerileri sorgulama --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
group by CLIENTNAME 
HAVING COUNT(DISTINCT BRANCH) > 5 

-- bu arada önemli not aggrigate komutylarý varken where deðil having kullanýlýr benim öneki yazdýðým gibi her group by'a having kullanmak zorudna
--deðilsin 








