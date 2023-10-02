----------------------------------------------------
-----Task #7 - Display the cost of each project-----
----------------------------------------------------

USE megasoftDB;

DROP FUNCTION IF EXISTS get_month_count;
DELIMITER //

CREATE FUNCTION get_month_count (finish DATE, start DATE)
RETURNS INT DETERMINISTIC
BEGIN
    RETURN (YEAR(finish) - YEAR(start)) * 12 + (MONTH(finish) - MONTH(start));
END //

SELECT project.id AS name, get_month_count(finish_date, start_date) * SUM(salary) AS price
FROM project
INNER JOIN project_worker ON project.id = project_id
INNER JOIN worker ON worker.id = worker_id
GROUP BY project.id
ORDER BY price DESC;
