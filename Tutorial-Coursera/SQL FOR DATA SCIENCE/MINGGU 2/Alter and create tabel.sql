--  New to create a new empty database. Then enter Mysql_Learners as the name of the database and select utf8_general_ci and click Create.


-- membuat tabel Petsale dan Pet

CREATE TABLE PETSALE (
    ID INTEGER NOT NULL,
    PET CHAR(20),
    SALEPRICE DECIMAL(6,2),
    PROFIT DECIMAL(6,2),
    SALEDATE DATE
    );
    
CREATE TABLE PET (
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER
    );

-- MENAMBAH KOLOM QUANTITY (TIPE DATA INTEGER) PADA PETSALE
ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;

-- MENGISI NILAI DARI KOLOM QUANTITY BEDASARKAN ID
UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;

-- MENGHAPUS KOLOM PROFIT
ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

-- MENGGANTI KOLOM PET (TIPE DATA CHAR) MENJADI HEWAN (TIPE DATA VARCHAR)
ALTER TABLE PETSALE CHANGE PET  HEWAN VARCHAR(20);
SELECT * FROM PETSALE;

-- MENGGANTI NAMA TABEL HEWAN MENJADI ANIMAL
ALTER TABLE `PETSALE` CHANGE `HEWAN` `ANIMAL` varchar(20);

SELECT * FROM PETSALE;

-- MENGHAPUS SELURUH ISI TABEL PETSALE
TRUNCATE TABLE PET ;

SELECT * FROM PET;

-- MENGHAPUS TABEL PET
DROP TABLE PET;

SELECT * FROM PET;