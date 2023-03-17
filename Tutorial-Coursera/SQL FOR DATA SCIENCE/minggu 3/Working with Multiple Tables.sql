--  SUMBER DATABASE HR

-- menampilkan data employees yang JOB_ID ada di JOB_INDENT
select * from EMPLOYEES where JOB_ID IN (select JOB_IDENT from JOBS);

-- menampilkan kolom tabel employee yang JOB_ID = JOB_indent yang job title = JR Desaigner
select * from EMPLOYEES where JOB_ID IN (select JOB_IDENT from JOBS where JOB_TITLE= 'Jr. Designer');

-- menampilkan JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT yang  job_indent = job_id dan salary di employess > 70000
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS where JOB_IDENT IN (select JOB_ID from EMPLOYEES where SALARY > 70000 );

-- menampilkan JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT yang JOB_INDENT = JOB_ID di employees dengan kelahiran > 1976
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS where JOB_IDENT IN (select JOB_ID from EMPLOYEES where YEAR(B_DATE)>1976 );

-- menampilkan JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT yang JOB_INDENT = JOB_ID di employees dengan kelahiran > 1976 dan jenis kelamin perempuan
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS  where JOB_IDENT IN (select JOB_ID from EMPLOYEES where YEAR(B_DATE)>1976 and SEX='F' );

-- menampilkan keseluruhan data employees dan jobs
select * from EMPLOYEES, JOBS;

-- menampilkan data keseluruhan employees dan jobs dengan JOB_id = JOB_indent
select * from EMPLOYEES, JOBS where EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
-- atau
select * from EMPLOYEES E, JOBS J where E.JOB_ID = J.JOB_IDENT;

-- menampilkan data EMP_ID,F_NAME,L_NAME, JOB_TITLE employees dan jobs dengan JOB_id = JOB_indent
select EMP_ID,F_NAME,L_NAME, JOB_TITLE from EMPLOYEES E, JOBS J where E.JOB_ID = J.JOB_IDENT;
-- atau dengan spesifik tabel
select E.EMP_ID,E.F_NAME,E.L_NAME, J.JOB_TITLE from EMPLOYEES E, JOBS  J where E.JOB_ID = J.JOB_IDENT;