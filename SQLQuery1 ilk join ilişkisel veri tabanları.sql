select USER_.ID, USER_. NAMESURNAME, USER_. TELNR1, USER_.TELNR2, USER_.EMAIL, ADDRES.ADDRESSTEXT from USER_

join ADDRES on ADDRES.USERID = USER_.ID

where USER_.ID = '1'


-- LEFT, RIGHT, FULL JOIN --

delete from ADDRES where ADDRES.ID = 102

select * from ADDRES where ADDRES.ID = 102
select * from USER_ where USER_.ID = 102


delete from ADDRES where ADDRES.USERID = 102
select USER_.ID, USER_.NAMESURNAME, ADDRES.* from USER_
 LEFT JOIN ADDRES on ADDRES.USERID = USER_.ID
where USER_.ID in (101,102,103)

select * from USER_
select * from ADDRES

select * from ADDRES
where ID = 1

select * from USER_
where ID = 1

select * from ADDRES
where USERID = 1

select USER_.ID, USER_.NAMESURNAME, ADDRES.USERID from USER_
join ADDRES on ADDRES.USERID = USER_.ID
where USERID = 1

select USER_.ID, USER_.NAMESURNAME, ADDRES.USERID from USER_
join ADDRES on ADDRES.USERID = USER_.ID
where USERID = 4

select USER_.ID, USER_.NAMESURNAME, ADDRES.* from USER_
 RIGHT JOIN ADDRES on ADDRES.USERID = USER_.ID
where USER_.ID in (101,102,103)

select USER_.ID, USER_.NAMESURNAME, ADDRES.* from USER_
FULL JOIN ADDRES on ADDRES.USERID = USER_.ID
where USER_.ID in (101,102,103)

select USER_.ID, USER_.NAMESURNAME, ADDRES.* from USER_
LEFT JOIN ADDRES on ADDRES.USERID = USER_.ID
where USER_.ID in (101,102,103)


-- Alias ( KIsaltmalar, Nick Name Kullanilma ) --
select * from USER_
select * from ADDRES
select * from TOWN
select * from COUNTRY
select * from CITY


select USER_.NAMESURNAME, USER_.TELNR1, USER_.TELNR2, ADDRES.ADDRESSTEXT, COUNTRY.COUNTRY, CITY.CITY, TOWN.TOWN from USER_ 

Join ADDRES on ADDRES.USERID = USER_.ID
Join COUNTRY on COUNTRY.ID = USER_.ID
Join CITY on CITY.ID = USER_.ID
Join TOWN on TOWN.ID = USER_.ID

-- Adres Sayisina Gore Gruplama --

select USER_.USERNAME_, USER_.NAMESURNAME, USER_.EMAIL, USER_.TELNR1, USER_.TELNR2, count(A.ID) as Adres_Sayisi from USER_ 

Join ADDRES on ADDRES.USERID = USER_.ID 
Join COUNTRY on COUNTRY.ID = USER_.ID
Join CITY on CITY.ID = USER_.ID
Join TOWN on TOWN.ID = USER_.ID

group by USER_.USERNAME_, USER_.NAMESURNAME, USER_.TELNR1, USER_.TELNR2, COUNTRY.COUNTRY, CITY.CITY, TOWN.TOWN

ORDER BY ADDRES.ID







