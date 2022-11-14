/* AGGREGATE FUNTIONS  aggregateler sum,min,avg,max vs olan fonksiyonlardır */

select BRANCH, 
SUM(LINENET) as Toplam_Satis, COUNT(*) as Satir_Sayisi, MIN(LINENET) as Endusuk_fiyat, AVG(LINENET) as Ortalama_Satis from SALES
--where BRANCH = 'İSTANBUL Subesi'
group by BRANCH