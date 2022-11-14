select BRANCH as 'Sube_adi', SUM(LINENET) as 'Toplam_Satis' from SALES
group by BRANCH order by SUM(LINENET) desc

select top 10 BRANCH as 'Sube_adi', SUM(LINENET) as 'Toplam_Satis' from SALES
group by BRANCH order by SUM(LINENET) desc

-- Toplam sat��� 50 binden b�y�k olan ma�azalar

select SUM(LINENET) as 'Toplam_Stis', BRANCH as 'Sube_Adi' from SALES
group by BRANCH 
Having sum(LINENET) > 50000
order by Toplam_Stis desc


-- �NEML� NOT!!!!! E�er group by kullan�yorsan where yerine having kullanmak zorundas�n!!!!!!!!!!!!!!!!! --

-- Bir Ma�azan�n g�nl�k sat���n� bulma--

select sum(LINENET) as Satis_Toplami, DATE_ as Tarih, BRANCH as Sube_�smi, COUNT(*) as Satir_Sayisi
from SALES
where BRANCH = 'Bursa Subesi' and DATE_ = '2017-01-05'
group by BRANCH, DATE_
order by DATE_

-- Bir ma�aza zincirinin t�rkiye genelinde g�nl�k sat�� say�s� --

select sum(LINENET) as Satis_Toplami, DATE_ as Tarih, BRANCH as Sube_�smi, COUNT(*) as Satir_Sayisi
from SALES
--where BRANCH = 'Bursa Subesi' and DATE_ = '2017-01-05'
group by BRANCH, DATE_
order by BRANCH, DATE_

-- Bir g�n�n ma�aza bazl� sat�� rakam� --

select BRANCH as sube, DATE_ as tarih, sum(LINENET) as satis from SALES
where DATE_ = '01-02-2017'
group by DATE_,BRANCH
order by satis desc

-- T�rkiye geneli ma�azalar�n sat��lar� g�nden g�ne -- 
select BRANCH as sube, DATE_ as tarih, sum(LINENET) as satis from SALES
--where DATE_ = '01-02-2017'
group by DATE_,BRANCH
order by DATE_,sum(LINENET) desc

