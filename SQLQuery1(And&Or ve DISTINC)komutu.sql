select * from Customers_Tables where City = 'Ýstanbul'

select * from Customers_Tables where Customer_Name like 'Hüseyin%'

select * from Customers_Tables where City = 'Ýstanbul'  and Customer_Name like 'Hüseyin%'

select * from Customers_Tables where City = 'Ýstanbul'  or Customer_Name like 'Hüseyin%'

/* and dersen 2 þartýda saðlayanlarý getirir fakat or dersen þartlardan birine bile saðlasa getirir o yüzden and dediðimizde hem istanbulda
yaþýcak hem de ismi Hüseyin olucak fakat ''or'' dediðimizde istanbulda yaþýyan hüseyinleri ve ayný zamanda adý hüseyin olan herkezi getiricek */


select City from Customers_Tables  /* Þimdi bböyle yaptýðýmýzda bize 1005 deðer getirdi çünkü tekrarlayan verilerin hepsini aldý yani 1005 kere þehir
indexi girilmiþ dedi*/

select  DISTINCT City from Customers_Tables /* Fakat böyle yaptýðýmýzda hiçbirini almadý çünkü tekrarlayan verileri almadý yani 30 kere istanbul þehri varsa onu 1
tane olarak aldý ve il sayýsý 81 oldu */

select DISTINCT City, District from Customers_Tables where City = 'Ýstanbul' /* Burda da yaptýðý þey istanbul'u aldý ve ilçelerini de 1'er kere aldý yani
2 tane istanbul kadýköyden müþteri varsa onu 1 kere aldý vve toplamda 22 sütun var bu demekki istanbulda 22 ilçe de müþterimiz var fakat bu þu demek deðil
istanbuld toplam 22 müþterimiz var */

