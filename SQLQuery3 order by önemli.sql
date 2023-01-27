-- ÜRÜN KATEGORİLERİNE GÖRE SATIÞ DATASI --

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami from SALES
where CATEGORY_NAME1 is not NULL
group by CATEGORY_NAME1 
order by Satis_Toplami desc

-- ÜRÜN KATEGORİSİ VE MARKALARA GÖRE --

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami, BRAND from SALES
where CATEGORY_NAME1 is not NULL
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- GIDA KATEGORİSİNDE HANGİ MARKALARIN EN ÇOK SATILDIĞINI İNCELEME--

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami, BRAND from SALES
where CATEGORY_NAME1 = 'Gýda' 
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- ÜRÜN MARKASINA GÖRE SATIŞLAR--

select BRAND, SUM(LINENET) as Satis_Toplami from SALES
WHERE BRAND is not null 
group by BRAND 
order by Satis_Toplami  desc

-- Ülker Markasının Hangi Kategorilerde En Çok Satış Yaptığını İnceleme --

select BRAND, SUM(LINENET) as Satis_Toplami, CATEGORY_NAME1 from SALES
WHERE BRAND = 'Ülker' 
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- 2 Kategoriye kadar inceleme 2 kırılımlı --

select BRAND, SUM(LINENET) as Satis_Toplami, CATEGORY_NAME1, CATEGORY_NAME2 from SALES
WHERE BRAND = 'Ülker' 
group by CATEGORY_NAME1, BRAND, CATEGORY_NAME2 
order by CATEGORY_NAME1, BRAND, CATEGORY_NAME2, Satis_Toplami desc
