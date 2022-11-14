-- �R�N KATEGOR�LER�NE G�RE SATI� DATASI --

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami from SALES
where CATEGORY_NAME1 is not NULL
group by CATEGORY_NAME1 
order by Satis_Toplami desc

-- MARKALARINI DA EKL�YEL�M --

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami, BRAND from SALES
where CATEGORY_NAME1 is not NULL
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- GIDA CATEGOR�S�N DE HANG� MARKANIN DAHA �OK SATILDI�INI �NCEL�YORUZ--

select CATEGORY_NAME1, sum(LINENET) as Satis_Toplami, BRAND from SALES
where CATEGORY_NAME1 = 'G�da' 
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- �R�N MARKASINA G�RE SATI�LAR--

select BRAND, SUM(LINENET) as Satis_Toplami from SALES
WHERE BRAND is not null -- Bursa is not null eklemedi�imz i�in hata oldu anlayamad�m sebebini ara�t�r --
group by BRAND 
order by Satis_Toplami  desc

-- �lker'in hangi kategorilerde daha �ok sat�� yapt���n� inceledik --

select BRAND, SUM(LINENET) as Satis_Toplami, CATEGORY_NAME1 from SALES
WHERE BRAND = '�lker' 
group by CATEGORY_NAME1, BRAND 
order by Satis_Toplami  desc

-- 2 Kategoriye kadar inceleme 2 k�r�l�m --

select BRAND, SUM(LINENET) as Satis_Toplami, CATEGORY_NAME1, CATEGORY_NAME2 from SALES
WHERE BRAND = '�lker' 
group by CATEGORY_NAME1, BRAND, CATEGORY_NAME2 
order by CATEGORY_NAME1, BRAND, CATEGORY_NAME2, Satis_Toplami desc