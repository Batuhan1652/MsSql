select BRANCH as 'Sube_adi', SUM(LINENET) as 'Toplam_Satis' from SALES
group by BRANCH order by SUM(LINENET) desc

select top 10 BRANCH as 'Sube_adi', SUM(LINENET) as 'Toplam_Satis' from SALES
group by BRANCH order by SUM(LINENET) desc

-- Toplam satışı 50 binden büyük olan maðazalar

select SUM(LINENET) as 'Toplam_Stis', BRANCH as 'Sube_Adi' from SALES
group by BRANCH 
Having sum(LINENET) > 50000
order by Toplam_Stis desc


-- Group by komutu kullanıyorsan where değil vanig komutu kullanmak zorundayız --

-- Bir Mağazanın günlük satışını bulma--

select sum(LINENET) as Satis_Toplami, DATE_ as Tarih, BRANCH as Sube_Ýsmi, COUNT(*) as Satir_Sayisi
from SALES
where BRANCH = 'Bursa Subesi' and DATE_ = '2017-01-05'
group by BRANCH, DATE_
order by DATE_

-- Bir mağazaa zincirinin Türkiye genelinde günlük satış sayısı --

select sum(LINENET) as Satis_Toplami, DATE_ as Tarih, BRANCH as Sube_Ýsmi, COUNT(*) as Satir_Sayisi
from SALES
--where BRANCH = 'Bursa Subesi' and DATE_ = '2017-01-05'
group by BRANCH, DATE_
order by BRANCH, DATE_

-- Bir günün mağaza bazlı satış sayısı --

select BRANCH as sube, DATE_ as tarih, sum(LINENET) as satis from SALES
where DATE_ = '01-02-2017'
group by DATE_,BRANCH
order by satis desc

-- Türkiye geneli mağazaların satışları günden güne -- 
select BRANCH as sube, DATE_ as tarih, sum(LINENET) as satis from SALES
--where DATE_ = '01-02-2017'
group by DATE_,BRANCH
order by DATE_,sum(LINENET) desc

