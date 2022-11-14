-- Mağazaların Müşteri Sayısını Hesaplama --

select BRANCH ,count(DISTINCT CLIENTNAME) from SALES
group by BRANCH

-- Peki 1 müşteri hem bursa hem balıkesir  şubesinden alışveriş yaptı ise ve ismi 2 kere yazdıldı ise?? --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
group by CLIENTNAME -- bu kod bıze bır müşterinin kaç tane farklı mağazaya gittiğini gösteriyor--

select DISTINCT BRANCH from SALES
where CLIENTNAME = 'Abdulkadir AĞZIKÜÇIK' -- bu kod bize abdülkadirin tr'de hangi mağazalara gitiğini gösteriyor --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
where CLIENTNAME = 'Abdulkadir AĞZIKÜÇIK'
group by CLIENTNAME -- bu kod sadece abdülkadirin kaç tane mağazaya gittiğnii söylüyor --

-- 5'den fazla magazaya giden müşerileri sorgulama --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
group by CLIENTNAME 
HAVING COUNT(DISTINCT BRANCH) > 5 

-- bu arada önemli not aggrigate komutyları varken where değil having kullanılır benim öneki yazdığım gibi her group by'a having kullanmak zorunda
--değilsin 








