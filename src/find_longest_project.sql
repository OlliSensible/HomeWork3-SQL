--------------------------------------------------------------
-----Task #5 - Find the project with the longest duration-----
--------------------------------------------------------------

USE megasoftDB;

DROP FUNCTION IF EXISTS get_month_count;
DELIMITER //

CREATE FUNCTION get_month_count (finish DATE, start DATE)
RETURNS INT DETERMINISTIC
BEGIN
    RETURN (YEAR(finish) - YEAR(start)) * 12 + (MONTH(finish) - MONTH(start));
END //

SELECT id AS name, get_month_count(finish_date, start_date) AS month_count
FROM project
WHERE get_month_count(finish_date, start_date) = (SELECT get_month_count(finish_date, start_date) AS max
                                                  FROM project
                                                  ORDER BY max DESC
                                                  LIMIT 1)
