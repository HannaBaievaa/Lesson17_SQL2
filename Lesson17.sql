SELECT COUNT(DISTINCT JOB_ID) FROM employees;
SELECT AVG(SALARY), COUNT(*) FROM employees WHERE DEPARTMENT_ID=90;
SELECT JOB_ID, COUNT(*) FROM employees GROUP BY JOB_ID;
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID, DEPARTMENT_NAME FROM employees JOIN departments USING (DEPARTMENT_ID);
SELECT e.FIRST_NAME, e.LAST_NAME, e.JOB_ID, e.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM employees e
JOIN departments d
ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
JOIN locations l
ON (d.LOCATION_ID = l.LOCATION_ID)
WHERE lower(l.city) = 'London';