select * from Customers_Tables where City = '�stanbul'

select * from Customers_Tables where Customer_Name like 'H�seyin%'

select * from Customers_Tables where City = '�stanbul'  and Customer_Name like 'H�seyin%'

select * from Customers_Tables where City = '�stanbul'  or Customer_Name like 'H�seyin%'

/* and dersen 2 �art�da sa�layanlar� getirir fakat or dersen �artlardan birine bile sa�lasa getirir o y�zden and dedi�imizde hem istanbulda
ya��cak hem de ismi H�seyin olucak fakat ''or'' dedi�imizde istanbulda ya��yan h�seyinleri ve ayn� zamanda ad� h�seyin olan herkezi getiricek */


select City from Customers_Tables  /* �imdi bb�yle yapt���m�zda bize 1005 de�er getirdi ��nk� tekrarlayan verilerin hepsini ald� yani 1005 kere �ehir
indexi girilmi� dedi*/

select  DISTINCT City from Customers_Tables /* Fakat b�yle yapt���m�zda hi�birini almad� ��nk� tekrarlayan verileri almad� yani 30 kere istanbul �ehri varsa onu 1
tane olarak ald� ve il say�s� 81 oldu */

select DISTINCT City, District from Customers_Tables where City = '�stanbul' /* Burda da yapt��� �ey istanbul'u ald� ve il�elerini de 1'er kere ald� yani
2 tane istanbul kad�k�yden m��teri varsa onu 1 kere ald� vve toplamda 22 s�tun var bu demekki istanbulda 22 il�e de m��terimiz var fakat bu �u demek de�il
istanbuld toplam 22 m��terimiz var */

