-- Ma�azalar�n M��teri Say�s�n� Hesaplama --

select BRANCH ,count(DISTINCT CLIENTNAME) from SALES
group by BRANCH

-- Peki 1 m��teri hem bursa hem bal�kesir  �ubesinden al��veri� yapt� ise ve ismi 2 kere yazd�ld� ise?? --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
group by CLIENTNAME -- bu kod b�ze b�r m��terinin ka� tane farkl� ma�azaya gitti�ini g�steriyor--

select DISTINCT BRANCH from SALES
where CLIENTNAME = 'Abdulkadir A�ZIK��IK' -- bu kod bize and�lkadirin tr'de hangi ma�azalara gitti�nin g�steriyorr --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
where CLIENTNAME = 'Abdulkadir A�ZIK��IK'
group by CLIENTNAME -- bu kod sadece abd�lkadirin ka� tane ma�azaya gitti�nii s�yl�yor --

-- 5'den fazla magazaya giden m��erileri sorgulama --

select CLIENTNAME ,count(DISTINCT BRANCH) from SALES
group by CLIENTNAME 
HAVING COUNT(DISTINCT BRANCH) > 5 

-- bu arada �nemli not aggrigate komutylar� varken where de�il having kullan�l�r benim �neki yazd���m gibi her group by'a having kullanmak zorudna
--de�ilsin 








