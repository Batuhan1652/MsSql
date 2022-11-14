select BRANCH as 'Sube_adi', SUM(LINENET) as 'Toplam_Satis' from SALES
group by BRANCH order by SUM(LINENET) desc

select top 10 BRANCH as 'Sube_adi', SUM(LINENET) as 'Toplam_Satis' from SALES
group by BRANCH order by SUM(LINENET) desc

-- Toplam satýþý 50 binden büyük olan maðazalar

select SUM(LINENET) as 'Toplam_Stis', BRANCH as 'Sube_Adi' from SALES
group by BRANCH 
Having sum(LINENET) > 50000
order by Toplam_Stis desc


-- ÖNEMLÝ NOT!!!!! Eðer group by kullanýyorsan where yerine having kullanmak zorundasýn!!!!!!!!!!!!!!!!! --

-- Bir Maðazanýn günlük satýþýný bulma--

select sum(LINENET) as Satis_Toplami, DATE_ as Tarih, BRANCH as Sube_Ýsmi, COUNT(*) as Satir_Sayisi
from SALES
where BRANCH = 'Bursa Subesi' and DATE_ = '2017-01-05'
group by BRANCH, DATE_
order by DATE_

-- Bir maðaza zincirinin türkiye genelinde günlük satýþ sayýsý --

select sum(LINENET) as Satis_Toplami, DATE_ as Tarih, BRANCH as Sube_Ýsmi, COUNT(*) as Satir_Sayisi
from SALES
--where BRANCH = 'Bursa Subesi' and DATE_ = '2017-01-05'
group by BRANCH, DATE_
order by BRANCH, DATE_

-- Bir günün maðaza bazlý satýþ rakamý --

select BRANCH as sube, DATE_ as tarih, sum(LINENET) as satis from SALES
where DATE_ = '01-02-2017'
group by DATE_,BRANCH
order by satis desc

-- Türkiye geneli maðazalarýn satýþlarý günden güne -- 
select BRANCH as sube, DATE_ as tarih, sum(LINENET) as satis from SALES
--where DATE_ = '01-02-2017'
group by DATE_,BRANCH
order by DATE_,sum(LINENET) desc

