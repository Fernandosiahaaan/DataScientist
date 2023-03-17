-- SUMBER TABEL HR MINGGU 2

-- adalah  mencari F_Name, dan L_Name pada tabel employees yang Address memiliki kata seperti "Elgin,IL"
SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';

-- mencari F_Name, dan L_Name, dan B_date  pada tabel employees yang B_DATE lebih dari 1 januari 1970
SELECT F_NAME , L_NAME, B_DATE
FROM EMPLOYEES
WHERE B_DATE >= "1970-01-01"

-- -- mencari F_Name, dan L_Name, dan B_date  pada tabel employees yang B_DATE semasa 197-an
SELECT F_NAME , L_NAME, B_DATE
FROM EMPLOYEES
WHERE B_DATE LIKE '197%';

--  mencari dari tabel employess yang dep_id 5 dan gaji diantara 60000 dan 70000
SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;

--  mengurutkan karyawan berdasarkan dep_id
SELECT * 
FROM `EMPLOYEES` 
ORDER BY DEP_ID;

--  mengurutkan terbalik Dep_id dan L-name dari tabel employees
SELECT * 
FROM `EMPLOYEES` 
ORDER BY DEP_ID DESC, L_NAME DESC;

-- mengurutkan berdasarakan Dep_name, dan L_name(terbalik )
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES as E, DEPARTMENTS as D     -- inisialisasi employees dan departements
WHERE E.DEP_ID = D.DEPT_ID_DEP     -- dep_id di employees sama dengan dept_id_dep di departements
ORDER BY D.DEP_NAME, E.L_NAME DESC; 

-- menghitung jumlah setiap dep_id dari tabel employees
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;   -- mengurutkan dep_id

-- menghitung jumlah setiap dep_id & rata" salary dep_id dari tabel employees
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

-- menghitung jumlah setiap dep_id & rata" salary dep_id dari tabel employees
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"  -- count(*) menjadi num_employes dan avg(salary) sebaggai AVG_Salary
FROM EMPLOYEES
GROUP BY DEP_ID;

-- mengurutkan berdsarkan kolom AVG_SALARY
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

-- mengurutkan berdsarkan kolom AVG_SALARY yang jumlah karywaan dept_id < 4
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING count(*) < 4
ORDER BY AVG_SALARY;