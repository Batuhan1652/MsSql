-- STRİNG FONKSİYONLAR --

-- ASCII VE CHAR FONKSİYONU--
-- ASCII BİZE HARF VE RAKAMLARIN ASCII DEĞERİNİ VERİRKEN CHAR İSE ASCII DEĞERİNİ YAZDIĞIMIZ HARF VEYA RAKAM HALİNİ VERİR
select ASCII('A')

select CHAR(65)

select CHAR(ASCII(49))

select ASCII(CHAR(49))

select CHAR(49)

-- SUBSTRİNG--
-- BİR STRİNG İFADEDE BİR NOKTADAN BAŞLAYIP NEREYE KADAR ALACAĞIMIZA YARAYAN FONKSİYON

select SUBSTRING('Batuhan Metin',1,7) -- Bu kodda çıktı Batuhan olur çünkü 1.karakterden 7. karaktere kadar al dedik
-- 1.karakter B ve 7. karakter n bu yüzden çıktı Batuhan olur

-- CHAR İNDEKS--
-- Bir string ifade'nin içinde başka bir string ifade aramaya yarar

select CHARINDEX ('Batuhan', 'Batuhan Metin',1) -- ilk virgül neyin aranacağı yani Batuhanı arayacağız 2.kısım nerden arayacağız
-- yani batuhan metin'de arayacağız 3.kısım hangi indexten başlanacak yani 1.index ile başla Batuhan Metin'in B sinden 2 desen a dan başlar
select CHARINDEX ('n', 'Batuhan Metin',1)

-- CONCAT KOMUTU--
-- 2 veya daha fazla string ifadeyi birleştirmeye yarar--

select CONCAT_WS(' ','Batuhan','Metin','Bursa','Nilüfer')

--peki concat tablolarda nasl çalışır

select CONCAT_WS(' ', USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.PASSWORD_) from USER_

select CONCAT_WS(' ', USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.PASSWORD_), * from USER_

-- FORMAT FONKSİYONU--
-- SAYI YADA TARİH TÜRÜNDEKİ DEĞERLERİ LOKAL OLARAK İSTEDİĞİMİZ DİLDE YAZDIRMAMIZI SAĞLAR--
-- GETDATE() bugünün tarihini getirir
select FORMAT(GETDATE(),'d','tr') -- küçük d ile yazarsak sadece sayı getirir yani 03/09/2022
select FORMAT(GETDATE(),'D','tr') -- fakat böyle yazarsak 3 Eylül 2022 Cumartesi yazar
select FORMAT(GETDATE(),'D','en') -- İngilizce hali
select FORMAT(GETDATE(),'D','zh-cn') -- Çince hali

-- LEFT, RİGHT, LEN FONKSİYONU--
-- LEFT VE RİGHT BİR STRİNGİN SAĞDAN VEYA SOLDAN VERDİĞİMİZ DEĞERE GÖRE BİZE GÖSTERİR LEFT 4 DERSEK SOLDAN 4 KARAKTERİ BİZE GÖSTERİR
-- LEN İSE BİR STRİNGİN UZUNLUĞUNU ALIR

select LEFT('Batuhan Metin',7)
select RIGHT('Batuhan Metin',5)

select LEFT('Batuhan Metin',7), CHARINDEX(' ', 'Batuhan Metin') 
SELECT RIGHT('Batuhan Metin', LEN('Batuhan Metin')-CHARINDEX(' ','Batuhan Metin'))
select LEFT('Batuhan Metin', CHARINDEX(' ','Batuhan Metin')),RIGHT('Batuhan Metin', LEN('Batuhan Metin')-CHARINDEX(' ','Batuhan Metin')) 

select LEFT(NAMESURNAME, CHARINDEX(' ',NAMESURNAME)),RIGHT(NAMESURNAME, LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) 
from USER_
-- Yukarıdaki kod ile tüm kullanıcıların ismi ve soyismini ayrı ayrı yazdırdık

--TRIM, RTRIM, LTRIM ( RTİRM RİGHT TRİM L LEFT TRİM )
-- Boşlukları silmeye yarıyor

select RTRIM(LTRIM(' Batuhan Metin '))

-- LOWER, UPPER, REVERSE, REPLİCATE FONKSİYONLARI

select LOWER('BATHAN')
select UPPER('batuhan')
select REVERSE('batuhan') -- tersten yazıyor nahutab yazar
select REPLICATE(0,10) -- 10 tane 0 yazar 



select *,REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,sırano) from TEST
UPDATE TEST set SIRANO2= REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)

select * from TEST


-- REPLACE  BİR ŞEY İLE BİR ŞEYİ YER DEĞİŞTİREN FONKSİYONDUR--

select 'Batuhan Metin'

select REPLACE('Batuhan Metin', 'Batuhan', 'Zeka Küpü')  -- çıktısı Zeka Küpü Metin olur replace mantığı ilk virgül
-- değişken, ikinci virgül değişecek nesne, üçüncü virgül ise ne ile değişeceği

--SQL ile değişken atama --

'Harut MarutAllah tarafından Babil’e gönderilen iki melektir. Onlar görevleri ise insanlara büyüyü öğretmektir. 
Büyü öğrenmek isteyen kişilere ise öncelikli olarak bunun karşılığında cehenneme gideceklerini söyleyen Harut ve Marut yalnızca bunu kabul etmeleri üzerine büyüyü öğretmekteydi. 
Cehennemi kabul eden birçok insan onların öğretmiş olduğu büyüyü yaparak kendilerini lanetlediler. 
Bazı anlatımlara göre Harut ve Marut aslında insanın nefsi olarak gönderilmişti. 
Bu duruma dair farklı rivayetler bulunmakla birlikte anlatılan bir hikâyede ise Harut veMarut aralarında sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yaratılmış olsalardı sürekli ibadet ile günlerini geçirecek olduklarını belirtmişlerdir. 
Bunun üzerine ise Allah Onlara şehvet duygusunu verdiğinde insanlardan çok daha fazla günah işleyeceklerini belirtmiştir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz güven duyuyorlarmış.  
Bunun üzerine ise istedikleri gibi Allah onlara şehvet duygusunu vermiş ve daha sonrasında ise onları dünya üzerine göndermiş. 
Dünyaya inen Harut ve Marut bir kadın görmüşler. Kadın ile birlikte olmayı istemeleri üzerine ise kadın onlara üç seçenek sunarak bunlardan birini yaptığınız takdirde sizinle birlikte olurum demiş. 
Bu üç seçenekten biri kocasını öldürmek iken diğeri puta tapmak ve bir diğeri ise şarap içmekmiş. 
Harut ve Marut ise üçüncü seçenek olan şarap içmeyi tercih etmişler.'

DECLARE @CUMLE as VARCHAR(max) = 'Harut MarutAllah tarafından Babil’e gönderilen iki melektir. Onlar görevleri ise insanlara büyüyü öğretmektir. 
Büyü öğrenmek isteyen kişilere ise öncelikli olarak bunun karşılığında cehenneme gideceklerini söyleyen Harut ve Marut yalnızca bunu kabul etmeleri üzerine büyüyü öğretmekteydi. 
Cehennemi kabul eden birçok insan onların öğretmiş olduğu büyüyü yaparak kendilerini lanetlediler. 
Bazı anlatımlara göre Harut ve Marut aslında insanın nefsi olarak gönderilmişti. 
Bu duruma dair farklı rivayetler bulunmakla birlikte anlatılan bir hikâyede ise Harut veMarut aralarında sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yaratılmış olsalardı sürekli ibadet ile günlerini geçirecek olduklarını belirtmişlerdir. 
Bunun üzerine ise Allah Onlara şehvet duygusunu verdiğinde insanlardan çok daha fazla günah işleyeceklerini belirtmiştir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz güven duyuyorlarmış.  
Bunun üzerine ise istedikleri gibi Allah onlara şehvet duygusunu vermiş ve daha sonrasında ise onları dünya üzerine göndermiş. 
Dünyaya inen Harut ve Marut bir kadın görmüşler. Kadın ile birlikte olmayı istemeleri üzerine ise kadın onlara üç seçenek sunarak bunlardan birini yaptığınız takdirde sizinle birlikte olurum demiş. 
Bu üç seçenekten biri kocasını öldürmek iken diğeri puta tapmak ve bir diğeri ise şarap içmekmiş. 
Harut ve Marut ise üçüncü seçenek olan şarap içmeyi tercih etmişler.'


set @CUMLE = 'Harut MarutAllah tarafından Babil’e gönderilen iki melektir. Onlar görevleri ise insanlara büyüyü öğretmektir. 
Büyü öğrenmek isteyen kişilere ise öncelikli olarak bunun karşılığında cehenneme gideceklerini söyleyen Harut ve Marut yalnızca bunu kabul etmeleri üzerine büyüyü öğretmekteydi. 
Cehennemi kabul eden birçok insan onların öğretmiş olduğu büyüyü yaparak kendilerini lanetlediler. 
Bazı anlatımlara göre Harut ve Marut aslında insanın nefsi olarak gönderilmişti. 
Bu duruma dair farklı rivayetler bulunmakla birlikte anlatılan bir hikâyede ise Harut veMarut aralarında sohbet etmekte olan iki melek olarak belirtilmektedir.

Bu iki melek sohbet ederken insanlar yerine kendilerinin duygu sahibi olarak yaratılmış olsalardı sürekli ibadet ile günlerini geçirecek olduklarını belirtmişlerdir. 
Bunun üzerine ise Allah Onlara şehvet duygusunu verdiğinde insanlardan çok daha fazla günah işleyeceklerini belirtmiştir. 
Fakat ne olursa olsun bu iki melek kendilerine sonsuz güven duyuyorlarmış.  
Bunun üzerine ise istedikleri gibi Allah onlara şehvet duygusunu vermiş ve daha sonrasında ise onları dünya üzerine göndermiş. 
Dünyaya inen Harut ve Marut bir kadın görmüşler. Kadın ile birlikte olmayı istemeleri üzerine ise kadın onlara üç seçenek sunarak bunlardan birini yaptığınız takdirde sizinle birlikte olurum demiş. 
Bu üç seçenekten biri kocasını öldürmek iken diğeri puta tapmak ve bir diğeri ise şarap içmekmiş. 
Harut ve Marut ise üçüncü seçenek olan şarap içmeyi tercih etmişler.'
set @CUMLE = REPLACE (@CUMLE,'Harut','Batuhan')
select @CUMLE 

DECLARE @SAYI as int

set @SAYI = 12


select @SAYI

set @CUMLE = REPLACE (@CUMLE,'Harut','Batuhan')

declare @TEST as varchar(max)

print @TEST

set @TEST = ' aslmgslşdmgsldmgslşdmgdslmgslşgmsldsdg' 

select @TEST
