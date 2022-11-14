-- STR�NG FONKS�YONLAR --

-- ASCII VE CHAR FONKS�YONU--
-- ASCII B�ZE HARF VE RAKAMLARIN ASCII DE�ER�N� VER�RKEN CHAR �SE ASCII DE�ER�N� YAZDI�IMIZ HARF VEYA RAKAM HAL�N� VER�R
select ASCII('A')

select CHAR(65)

select CHAR(ASCII(49))

select ASCII(CHAR(49))

select CHAR(49)

-- SUBSTR�NG--
-- B�R STR�NG �FADEDE B�R NOKTADAN BA�LAYIP NEREYE KADAR ALACA�IMIZA YARAYAN FONKS�YON

select SUBSTRING('Batuhan Metin',1,7) -- Bu kodda ��kt� Batuhan olur ��nk� 1.karakterden 7. karaktere kadar al dedik
-- 1.karakter B ve 7. karakter n bu y�zden ��kt� Batuhan olur

-- CHAR �NDEKS--
-- Bir string ifade'nin i�inde ba�ka bir string ifade aramaya yarar

select CHARINDEX ('Batuhan', 'Batuhan Metin',1) -- ilk virg�l neyin aranaca�� yani Batuhan� arayaca��z 2.k�s�m nerden arayaca��z
-- yani batuhan metin'de arayaca��z 3.k�s�m hangi indexten ba�lanacak yani 1.index ile ba�la Batuhan Metin'in B sinden 2 desen a dan ba�lar
select CHARINDEX ('n', 'Batuhan Metin',1)

-- CONCAT KOMUTU--
-- 2 veya daha fazla string ifadeyi birle�tirmeye yarar--

select CONCAT_WS(' ','Batuhan','Metin','Bursa','Nil�fer')

--peki concat tablolarda nasl �al���r

select CONCAT_WS(' ', USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.PASSWORD_) from USER_

select CONCAT_WS(' ', USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.PASSWORD_), * from USER_

-- FORMAT FONKS�YONU--
-- SAYI YADA TAR�H T�R�NDEK� DE�ERLER� LOKAL OLARAK �STED���M�Z D�LDE YAZDIRMAMIZI SA�LAR--
-- GETDATE() bug�n�n tarihini getirir
select FORMAT(GETDATE(),'d','tr') -- k���k d ile yazarsak sadece say� getirir yani 03/09/2022
select FORMAT(GETDATE(),'D','tr') -- fakat b�yle yazarsak 3 Eyl�l 2022 Cumartesi yazar
select FORMAT(GETDATE(),'D','en') -- �ngilizce hali
select FORMAT(GETDATE(),'D','zh-cn') -- �ince hali

-- LEFT, R�GHT, LEN FONKS�YONU--
-- LEFT VE R�GHT B�R STR�NG�N SA�DAN VEYA SOLDAN VERD���M�Z DE�ERE G�RE B�ZE G�STER�R LEFT 4 DERSEK SOLDAN 4 KARAKTER� B�ZE G�STER�R
-- LEN �SE B�R STR�NG�N UZUNLU�UNU ALIR

select LEFT('Batuhan Metin',7)
select RIGHT('Batuhan Metin',5)

select LEFT('Batuhan Metin',7), CHARINDEX(' ', 'Batuhan Metin') 
SELECT RIGHT('Batuhan Metin', LEN('Batuhan Metin')-CHARINDEX(' ','Batuhan Metin'))
select LEFT('Batuhan Metin', CHARINDEX(' ','Batuhan Metin')),RIGHT('Batuhan Metin', LEN('Batuhan Metin')-CHARINDEX(' ','Batuhan Metin')) 

select LEFT(NAMESURNAME, CHARINDEX(' ',NAMESURNAME)),RIGHT(NAMESURNAME, LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) 
from USER_
-- Yukar�daki kod ile t�m kullan�c�lar�n ismi ve soyismini ayr� ayr� yazd�rd�k

--TRIM, RTRIM, LTRIM ( RT�RM R�GHT TR�M L LEFT TR�M )
-- Bo�luklar� silmeye yar�yor

select RTRIM(LTRIM(' Batuhan Metin '))

-- LOWER, UPPER, REVERSE, REPL�CATE FONKS�YONLARI

select LOWER('BATHAN')
select UPPER('batuhan')
select REVERSE('batuhan') -- tersten yaz�yor nahutab yazar
select REPLICATE(0,10) -- 10 tane 0 yazar 



select *,REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,s�rano) from TEST
UPDATE TEST set SIRANO2= REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)

select * from TEST


-- REPLACE  B�R �EY �LE B�R �EY� YER DE���T�REN FONKS�YONDUR--

select 'Batuhan Metin'

select REPLACE('Batuhan Metin', 'Batuhan', 'Zeka K�p�')  -- ��kt�s� Zeka K�p� Metin olur replace mant��� ilk virg�l
-- de�i�ken, ikinci virg�l de�i�ecek nesne, ���nc� virg�l ise ne ile de�i�ece�i

--SQL ile de�i�ken atama --

'Harut MarutAllah taraf�ndan Babil�e g�nderilen iki melektir. Onlar g�revleri ise insanlara b�y�y� ��retmektir. 
B�y� ��renmek isteyen ki�ilere ise �ncelikli olarak bunun kar��l���nda cehenneme gideceklerini s�yleyen Harut ve Marut yaln�zca bunu kabul etmeleri �zerine b�y�y� ��retmekteydi. 
Cehennemi kabul eden bir�ok insan onlar�n ��retmi� oldu�u b�y�y� yaparak kendilerini lanetlediler. 
Baz� anlat�mlara g�re Harut ve Marut asl�nda insan�n nefsi olarak g�nderilmi�ti. 
Bu duruma dair farkl� rivayetler bulunmakla birlikte anlat�lan bir hik�yede ise Harut veMarut aralar�nda sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yarat�lm�� olsalard� s�rekli ibadet ile g�nlerini ge�irecek olduklar�n� belirtmi�lerdir. 
Bunun �zerine ise Allah Onlara �ehvet duygusunu verdi�inde insanlardan �ok daha fazla g�nah i�leyeceklerini belirtmi�tir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz g�ven duyuyorlarm��.  
Bunun �zerine ise istedikleri gibi Allah onlara �ehvet duygusunu vermi� ve daha sonras�nda ise onlar� d�nya �zerine g�ndermi�. 
D�nyaya inen Harut ve Marut bir kad�n g�rm��ler. Kad�n ile birlikte olmay� istemeleri �zerine ise kad�n onlara �� se�enek sunarak bunlardan birini yapt���n�z takdirde sizinle birlikte olurum demi�. 
Bu �� se�enekten biri kocas�n� �ld�rmek iken di�eri puta tapmak ve bir di�eri ise �arap i�mekmi�. 
Harut ve Marut ise ���nc� se�enek olan �arap i�meyi tercih etmi�ler.'

DECLARE @CUMLE as VARCHAR(max) = 'Harut MarutAllah taraf�ndan Babil�e g�nderilen iki melektir. Onlar g�revleri ise insanlara b�y�y� ��retmektir. 
B�y� ��renmek isteyen ki�ilere ise �ncelikli olarak bunun kar��l���nda cehenneme gideceklerini s�yleyen Harut ve Marut yaln�zca bunu kabul etmeleri �zerine b�y�y� ��retmekteydi. 
Cehennemi kabul eden bir�ok insan onlar�n ��retmi� oldu�u b�y�y� yaparak kendilerini lanetlediler. 
Baz� anlat�mlara g�re Harut ve Marut asl�nda insan�n nefsi olarak g�nderilmi�ti. 
Bu duruma dair farkl� rivayetler bulunmakla birlikte anlat�lan bir hik�yede ise Harut veMarut aralar�nda sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yarat�lm�� olsalard� s�rekli ibadet ile g�nlerini ge�irecek olduklar�n� belirtmi�lerdir. 
Bunun �zerine ise Allah Onlara �ehvet duygusunu verdi�inde insanlardan �ok daha fazla g�nah i�leyeceklerini belirtmi�tir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz g�ven duyuyorlarm��.  
Bunun �zerine ise istedikleri gibi Allah onlara �ehvet duygusunu vermi� ve daha sonras�nda ise onlar� d�nya �zerine g�ndermi�. 
D�nyaya inen Harut ve Marut bir kad�n g�rm��ler. Kad�n ile birlikte olmay� istemeleri �zerine ise kad�n onlara �� se�enek sunarak bunlardan birini yapt���n�z takdirde sizinle birlikte olurum demi�. 
Bu �� se�enekten biri kocas�n� �ld�rmek iken di�eri puta tapmak ve bir di�eri ise �arap i�mekmi�. 
Harut ve Marut ise ���nc� se�enek olan �arap i�meyi tercih etmi�ler.'


set @CUMLE = 'Harut MarutAllah taraf�ndan Babil�e g�nderilen iki melektir. Onlar g�revleri ise insanlara b�y�y� ��retmektir. 
B�y� ��renmek isteyen ki�ilere ise �ncelikli olarak bunun kar��l���nda cehenneme gideceklerini s�yleyen Harut ve Marut yaln�zca bunu kabul etmeleri �zerine b�y�y� ��retmekteydi. 
Cehennemi kabul eden bir�ok insan onlar�n ��retmi� oldu�u b�y�y� yaparak kendilerini lanetlediler. 
Baz� anlat�mlara g�re Harut ve Marut asl�nda insan�n nefsi olarak g�nderilmi�ti. 
Bu duruma dair farkl� rivayetler bulunmakla birlikte anlat�lan bir hik�yede ise Harut veMarut aralar�nda sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yarat�lm�� olsalard� s�rekli ibadet ile g�nlerini ge�irecek olduklar�n� belirtmi�lerdir. 
Bunun �zerine ise Allah Onlara �ehvet duygusunu verdi�inde insanlardan �ok daha fazla g�nah i�leyeceklerini belirtmi�tir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz g�ven duyuyorlarm��.  
Bunun �zerine ise istedikleri gibi Allah onlara �ehvet duygusunu vermi� ve daha sonras�nda ise onlar� d�nya �zerine g�ndermi�. 
D�nyaya inen Harut ve Marut bir kad�n g�rm��ler. Kad�n ile birlikte olmay� istemeleri �zerine ise kad�n onlara �� se�enek sunarak bunlardan birini yapt���n�z takdirde sizinle birlikte olurum demi�. 
Bu �� se�enekten biri kocas�n� �ld�rmek iken di�eri puta tapmak ve bir di�eri ise �arap i�mekmi�. 
Harut ve Marut ise ���nc� se�enek olan �arap i�meyi tercih etmi�ler.'
set @CUMLE = REPLACE (@CUMLE,'Harut','Batuhan')
select @CUMLE
-- �imdi �unu yapt�k ik defa sql de de�i�ken atama yapt�k fakat sorun �u ki 

DECLARE @SAYI as int

set @SAYI = 12


select @SAYI

set @CUMLE = REPLACE (@CUMLE,'Harut','Batuhan')

declare @TEST as varchar(max)

print @TEST

set @TEST = ' aslmgsl�dmgsldmgsl�dmgdslmgsl�gmsldsdg' 

select @TEST