select * from Customers_Tables where City = 'İstanbul'

select * from Customers_Tables where Customer_Name like 'Hüseyin%'

select * from Customers_Tables where City = 'İstanbul'  and Customer_Name like 'Hüseyin%'

select * from Customers_Tables where City = 'İstanbul'  or Customer_Name like 'Hüseyin%'

/* and dersen 2 şartıda sağlayanları getirir fakat or dersen şartlardan birine bile sağlasa getirir o yüzden and dediğimizde hem istanbulda
yaşıcak hem de ismi Hüseyin olucak fakat ''or'' dediğimizde istanbulda yaşıyan hüseyinleri ve aynı zamanda adı hüseyin olan herkezi getiricek */


select City from Customers_Tables  /* Şimdi bböyle yaptığımızda bize 1005 değer getirdi çünkü tekrarlayan verilerin hepsini aldı yani 1005 kere şehir
indexi girilmiş dedi*/

select  DISTINCT City from Customers_Tables /* Fakat böyle yaptığımızda hiçbirini almadı çünkü tekrarlayan verileri almadı yani 30 kere istanbul şehri varsa onu 1
tane olarak aldı ve il sayısı 81 oldu */

select DISTINCT City, District from Customers_Tables where City = 'İstanbul' /* Burda da yaptığı şey istanbul'u aldı ve ilçelerini de 1'er kere aldı yani
2 tane istanbul kadıköyden müşteri varsa onu 1 kere aldı ve toplamda 22 sütun var bu demekki istanbulda 22 ilçe de müşterimiz var fakat bu şu demek değil
istanbul'da toplam 22 müşterimiz var */

