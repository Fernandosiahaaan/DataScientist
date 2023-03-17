-- SUMBER TABEL DATABASE MINGGU 3

-- hitung total cost dari tabel
select SUM(COST) AS "SUM OF COST" from PETRESCUE;
-- atau
select SUM(COST) AS SUM_OF_COST from PETRESCUE;

-- mencari max dari quantity
select MAX(QUANTITY) AS "MAX QUANTITY" from PETRESCUE;

-- mencari rata" dari cost
select AVG(COST) AS AVG_COST from PETRESCUE;

-- rata rata cost/quantity yang tipe anjing
select AVG(COST/ QUANTITY) from PETRESCUE where ANIMAL = 'Dog';

-- menampilkan nilai int cost (round)
select ANIMAL, COST, ROUND(COST) from PETRESCUE;

-- menampilkan animal, dan panjang char animal
-- distinct berfungsi tidak memanggil animal yang sama
select DISTINCT ANIMAL, LENGTH(ANIMAL) from PETRESCUE

-- memanggil animal huruf kapital
select ANIMAL, UCASE(ANIMAL) from PETRESCUE;
-- atau tidak berulang 
select DISTINCT ANIMAL, UCASE(ANIMAL) from PETRESCUE;

-- menampilkan data yang animal nya cal (lower case)
select * from PETRESCUE where LCASE(ANIMAL) = 'cat';

-- menampilkan tanggal dari cat
select ANIMAL, DAY(RESCUEDATE) from PETRESCUE where ANIMAL = 'Cat';

-- menghitung jumlah quantitty yang berada pada bulan 5
select SUM(QUANTITY) from PETRESCUE where MONTH(RESCUEDATE)='05';

-- menghitung jumlah quantitty yang berada pada tanggal 14
select SUM(QUANTITY) from PETRESCUE where DAY(RESCUEDATE)='14';

-- menghitung selisih hari ini dengan waktu rescuedate
select DATEDIFF(CURRENT_TIMESTAMP,RESCUEDATE) from PETRESCUE;

-- menambah tanggal denngan interval 3 hari
select DATE_add(RESCUEDATE, INTERVAL 3 DAY) from PETRESCUE;