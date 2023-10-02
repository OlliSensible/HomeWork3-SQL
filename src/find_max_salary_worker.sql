---------------------------------------------
------------Task #3 - Max Salary-------------
---------------------------------------------

USE megasoftDB;

SELECT name, salary
FROM worker
WHERE salary = (SELECT salary
                FROM worker
                ORDER BY salary DESC
                LIMIT 1)
