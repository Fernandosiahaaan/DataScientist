-- SUMBER DATABASE HR

-- menampilkan karyawan yang salarynya dibawah dari rata" salary
select EMP_ID, F_NAME, L_NAME, SALARY 
from EMPLOYEES
where SALARY < (select AVG(SALARY) 
                from EMPLOYEES);

-- menampilkan EMP_ID, salary, dan max salary dari employees
select EMP_ID, SALARY, ( select MAX(SALARY) from EMPLOYEES ) AS MAX_SALARY 
from EMPLOYEES;

-- menampilkan nilai EMP_ID, F_NAME, L_NAME, DEP_ID dari tabel Employees
select * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES) AS EMP4ALL;
