/* AGGREGATE FUNTIONS  aggregateler sum,min,avg,max vs olan fonksiyonlard�r */

select BRANCH, 
SUM(LINENET) as Toplam_Satis, COUNT(*) as Satir_Sayisi, MIN(LINENET) as Endusuk_fiyat, AVG(LINENET) as Ortalama_Satis from SALES
--where BRANCH = '�STANBUL Subesi'
group by BRANCH