-- ÜRÜN KATEGORÝLERÝNE GÖRE SATIÞ DATASI --

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami from SALES
where CATEGORY_NAME1 is not NULL
group by CATEGORY_NAME1 
order by Satis_Toplami desc

-- MARKALARINI DA EKLÝYELÝM --

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami, BRAND from SALES
where CATEGORY_NAME1 is not NULL
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- GIDA CATEGORÝSÝN DE HANGÝ MARKANIN DAHA ÇOK SATILDIÐINI ÝNCELÝYORUZ--

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami, BRAND from SALES
where CATEGORY_NAME1 = 'Gýda' 
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- ÜRÜN MARKASINA GÖRE SATIÞLAR--

select BRAND, SUM(LINENET) as Satis_Toplami from SALES
WHERE BRAND is not null -- Bursa is not null eklemediðimz için hata oldu anlayamadým sebebini araþtýr --
group by BRAND 
order by Satis_Toplami  desc

-- Ülker'in hangi kategorilerde daha çok satýþ yaptýðýný inceledik --

select BRAND, SUM(LINENET) as Satis_Toplami, CATEGORY_NAME1 from SALES
WHERE BRAND = 'Ülker' 
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- 2 Kategoriye kadar inceleme 2 kýrýlým --

select BRAND, SUM(LINENET) as Satis_Toplami, CATEGORY_NAME1, CATEGORY_NAME2 from SALES
WHERE BRAND = 'Ülker' 
group by CATEGORY_NAME1, BRAND, CATEGORY_NAME2 
order by CATEGORY_NAME1, BRAND, CATEGORY_NAME2, Satis_Toplami desc