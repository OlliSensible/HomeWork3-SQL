--------------------------------------------------------------
--------Task #6 - Find the oldest and youngest employee-------
--------------------------------------------------------------

USE megasoftDB;

SELECT 'YOUNGEST' AS type, name, birthday
FROM worker
WHERE birthday = (SELECT birthday
                  FROM worker
                  ORDER BY birthday DESC
                  LIMIT 1)
UNION
SELECT 'ELDEST' AS type, name, birthday
FROM worker
WHERE birthday = (SELECT birthday
                  FROM worker
                  ORDER BY birthday ASC
                  LIMIT 1)
