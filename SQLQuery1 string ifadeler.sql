-- STRÝNG FONKSÝYONLAR --

-- ASCII VE CHAR FONKSÝYONU--
-- ASCII BÝZE HARF VE RAKAMLARIN ASCII DEÐERÝNÝ VERÝRKEN CHAR ÝSE ASCII DEÐERÝNÝ YAZDIÐIMIZ HARF VEYA RAKAM HALÝNÝ VERÝR
select ASCII('A')

select CHAR(65)

select CHAR(ASCII(49))

select ASCII(CHAR(49))

select CHAR(49)

-- SUBSTRÝNG--
-- BÝR STRÝNG ÝFADEDE BÝR NOKTADAN BAÞLAYIP NEREYE KADAR ALACAÐIMIZA YARAYAN FONKSÝYON

select SUBSTRING('Batuhan Metin',1,7) -- Bu kodda çýktý Batuhan olur çünkü 1.karakterden 7. karaktere kadar al dedik
-- 1.karakter B ve 7. karakter n bu yüzden çýktý Batuhan olur

-- CHAR ÝNDEKS--
-- Bir string ifade'nin içinde baþka bir string ifade aramaya yarar

select CHARINDEX ('Batuhan', 'Batuhan Metin',1) -- ilk virgül neyin aranacaðý yani Batuhaný arayacaðýz 2.kýsým nerden arayacaðýz
-- yani batuhan metin'de arayacaðýz 3.kýsým hangi indexten baþlanacak yani 1.index ile baþla Batuhan Metin'in B sinden 2 desen a dan baþlar
select CHARINDEX ('n', 'Batuhan Metin',1)

-- CONCAT KOMUTU--
-- 2 veya daha fazla string ifadeyi birleþtirmeye yarar--

select CONCAT_WS(' ','Batuhan','Metin','Bursa','Nilüfer')

--peki concat tablolarda nasl çalýþýr

select CONCAT_WS(' ', USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.PASSWORD_) from USER_

select CONCAT_WS(' ', USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.PASSWORD_), * from USER_

-- FORMAT FONKSÝYONU--
-- SAYI YADA TARÝH TÜRÜNDEKÝ DEÐERLERÝ LOKAL OLARAK ÝSTEDÝÐÝMÝZ DÝLDE YAZDIRMAMIZI SAÐLAR--
-- GETDATE() bugünün tarihini getirir
select FORMAT(GETDATE(),'d','tr') -- küçük d ile yazarsak sadece sayý getirir yani 03/09/2022
select FORMAT(GETDATE(),'D','tr') -- fakat böyle yazarsak 3 Eylül 2022 Cumartesi yazar
select FORMAT(GETDATE(),'D','en') -- Ýngilizce hali
select FORMAT(GETDATE(),'D','zh-cn') -- Çince hali

-- LEFT, RÝGHT, LEN FONKSÝYONU--
-- LEFT VE RÝGHT BÝR STRÝNGÝN SAÐDAN VEYA SOLDAN VERDÝÐÝMÝZ DEÐERE GÖRE BÝZE GÖSTERÝR LEFT 4 DERSEK SOLDAN 4 KARAKTERÝ BÝZE GÖSTERÝR
-- LEN ÝSE BÝR STRÝNGÝN UZUNLUÐUNU ALIR

select LEFT('Batuhan Metin',7)
select RIGHT('Batuhan Metin',5)

select LEFT('Batuhan Metin',7), CHARINDEX(' ', 'Batuhan Metin') 
SELECT RIGHT('Batuhan Metin', LEN('Batuhan Metin')-CHARINDEX(' ','Batuhan Metin'))
select LEFT('Batuhan Metin', CHARINDEX(' ','Batuhan Metin')),RIGHT('Batuhan Metin', LEN('Batuhan Metin')-CHARINDEX(' ','Batuhan Metin')) 

select LEFT(NAMESURNAME, CHARINDEX(' ',NAMESURNAME)),RIGHT(NAMESURNAME, LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) 
from USER_
-- Yukarýdaki kod ile tüm kullanýcýlarýn ismi ve soyismini ayrý ayrý yazdýrdýk

--TRIM, RTRIM, LTRIM ( RTÝRM RÝGHT TRÝM L LEFT TRÝM )
-- Boþluklarý silmeye yarýyor

select RTRIM(LTRIM(' Batuhan Metin '))

-- LOWER, UPPER, REVERSE, REPLÝCATE FONKSÝYONLARI

select LOWER('BATHAN')
select UPPER('batuhan')
select REVERSE('batuhan') -- tersten yazýyor nahutab yazar
select REPLICATE(0,10) -- 10 tane 0 yazar 



select *,REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,sýrano) from TEST
UPDATE TEST set SIRANO2= REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)

select * from TEST


-- REPLACE  BÝR ÞEY ÝLE BÝR ÞEYÝ YER DEÐÝÞTÝREN FONKSÝYONDUR--

select 'Batuhan Metin'

select REPLACE('Batuhan Metin', 'Batuhan', 'Zeka Küpü')  -- çýktýsý Zeka Küpü Metin olur replace mantýðý ilk virgül
-- deðiþken, ikinci virgül deðiþecek nesne, üçüncü virgül ise ne ile deðiþeceði

--SQL ile deðiþken atama --

'Harut MarutAllah tarafýndan Babil’e gönderilen iki melektir. Onlar görevleri ise insanlara büyüyü öðretmektir. 
Büyü öðrenmek isteyen kiþilere ise öncelikli olarak bunun karþýlýðýnda cehenneme gideceklerini söyleyen Harut ve Marut yalnýzca bunu kabul etmeleri üzerine büyüyü öðretmekteydi. 
Cehennemi kabul eden birçok insan onlarýn öðretmiþ olduðu büyüyü yaparak kendilerini lanetlediler. 
Bazý anlatýmlara göre Harut ve Marut aslýnda insanýn nefsi olarak gönderilmiþti. 
Bu duruma dair farklý rivayetler bulunmakla birlikte anlatýlan bir hikâyede ise Harut veMarut aralarýnda sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yaratýlmýþ olsalardý sürekli ibadet ile günlerini geçirecek olduklarýný belirtmiþlerdir. 
Bunun üzerine ise Allah Onlara þehvet duygusunu verdiðinde insanlardan çok daha fazla günah iþleyeceklerini belirtmiþtir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz güven duyuyorlarmýþ.  
Bunun üzerine ise istedikleri gibi Allah onlara þehvet duygusunu vermiþ ve daha sonrasýnda ise onlarý dünya üzerine göndermiþ. 
Dünyaya inen Harut ve Marut bir kadýn görmüþler. Kadýn ile birlikte olmayý istemeleri üzerine ise kadýn onlara üç seçenek sunarak bunlardan birini yaptýðýnýz takdirde sizinle birlikte olurum demiþ. 
Bu üç seçenekten biri kocasýný öldürmek iken diðeri puta tapmak ve bir diðeri ise þarap içmekmiþ. 
Harut ve Marut ise üçüncü seçenek olan þarap içmeyi tercih etmiþler.'

DECLARE @CUMLE as VARCHAR(max) = 'Harut MarutAllah tarafýndan Babil’e gönderilen iki melektir. Onlar görevleri ise insanlara büyüyü öðretmektir. 
Büyü öðrenmek isteyen kiþilere ise öncelikli olarak bunun karþýlýðýnda cehenneme gideceklerini söyleyen Harut ve Marut yalnýzca bunu kabul etmeleri üzerine büyüyü öðretmekteydi. 
Cehennemi kabul eden birçok insan onlarýn öðretmiþ olduðu büyüyü yaparak kendilerini lanetlediler. 
Bazý anlatýmlara göre Harut ve Marut aslýnda insanýn nefsi olarak gönderilmiþti. 
Bu duruma dair farklý rivayetler bulunmakla birlikte anlatýlan bir hikâyede ise Harut veMarut aralarýnda sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yaratýlmýþ olsalardý sürekli ibadet ile günlerini geçirecek olduklarýný belirtmiþlerdir. 
Bunun üzerine ise Allah Onlara þehvet duygusunu verdiðinde insanlardan çok daha fazla günah iþleyeceklerini belirtmiþtir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz güven duyuyorlarmýþ.  
Bunun üzerine ise istedikleri gibi Allah onlara þehvet duygusunu vermiþ ve daha sonrasýnda ise onlarý dünya üzerine göndermiþ. 
Dünyaya inen Harut ve Marut bir kadýn görmüþler. Kadýn ile birlikte olmayý istemeleri üzerine ise kadýn onlara üç seçenek sunarak bunlardan birini yaptýðýnýz takdirde sizinle birlikte olurum demiþ. 
Bu üç seçenekten biri kocasýný öldürmek iken diðeri puta tapmak ve bir diðeri ise þarap içmekmiþ. 
Harut ve Marut ise üçüncü seçenek olan þarap içmeyi tercih etmiþler.'


set @CUMLE = 'Harut MarutAllah tarafýndan Babil’e gönderilen iki melektir. Onlar görevleri ise insanlara büyüyü öðretmektir. 
Büyü öðrenmek isteyen kiþilere ise öncelikli olarak bunun karþýlýðýnda cehenneme gideceklerini söyleyen Harut ve Marut yalnýzca bunu kabul etmeleri üzerine büyüyü öðretmekteydi. 
Cehennemi kabul eden birçok insan onlarýn öðretmiþ olduðu büyüyü yaparak kendilerini lanetlediler. 
Bazý anlatýmlara göre Harut ve Marut aslýnda insanýn nefsi olarak gönderilmiþti. 
Bu duruma dair farklý rivayetler bulunmakla birlikte anlatýlan bir hikâyede ise Harut veMarut aralarýnda sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yaratýlmýþ olsalardý sürekli ibadet ile günlerini geçirecek olduklarýný belirtmiþlerdir. 
Bunun üzerine ise Allah Onlara þehvet duygusunu verdiðinde insanlardan çok daha fazla günah iþleyeceklerini belirtmiþtir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz güven duyuyorlarmýþ.  
Bunun üzerine ise istedikleri gibi Allah onlara þehvet duygusunu vermiþ ve daha sonrasýnda ise onlarý dünya üzerine göndermiþ. 
Dünyaya inen Harut ve Marut bir kadýn görmüþler. Kadýn ile birlikte olmayý istemeleri üzerine ise kadýn onlara üç seçenek sunarak bunlardan birini yaptýðýnýz takdirde sizinle birlikte olurum demiþ. 
Bu üç seçenekten biri kocasýný öldürmek iken diðeri puta tapmak ve bir diðeri ise þarap içmekmiþ. 
Harut ve Marut ise üçüncü seçenek olan þarap içmeyi tercih etmiþler.'
set @CUMLE = REPLACE (@CUMLE,'Harut','Batuhan')
select @CUMLE
-- þimdi þunu yaptýk ik defa sql de deðiþken atama yaptýk fakat sorun þu ki 

DECLARE @SAYI as int

set @SAYI = 12


select @SAYI

set @CUMLE = REPLACE (@CUMLE,'Harut','Batuhan')

declare @TEST as varchar(max)

print @TEST

set @TEST = ' aslmgslþdmgsldmgslþdmgdslmgslþgmsldsdg' 

select @TEST