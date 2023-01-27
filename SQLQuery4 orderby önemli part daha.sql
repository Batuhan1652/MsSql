-- Mağazaların Müşteri Sayısını Hesaplama --

select BRANCH ,count(DISTINCT CLIENTNAME) from SALES
group by BRANCH

-- Aynı Müşterinin 2 farklı şubeden alışveriş yaptığı senaryo --

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

--önemli not aggrigate komutları varken where değil having kullanılır!
--








