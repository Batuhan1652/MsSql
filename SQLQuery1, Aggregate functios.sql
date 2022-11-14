/* AGGREGATE FUNTIONS  aggregateler sum,min,avg,max vs olan fonksiyonlardýr */

select BRANCH, 
SUM(LINENET) as Toplam_Satis, COUNT(*) as Satir_Sayisi, MIN(LINENET) as Endusuk_fiyat, AVG(LINENET) as Ortalama_Satis from SALES
--where BRANCH = 'ÝSTANBUL Subesi'
group by BRANCH