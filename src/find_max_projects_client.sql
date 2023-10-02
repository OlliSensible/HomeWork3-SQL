---------------------------------------------------------------------------
-------Task #4 - Find the client with the highest number of projects-------
---------------------------------------------------------------------------

USE megasoftDB;

SELECT client.name AS name, COUNT(project.id) AS project_count
FROM client
INNER JOIN project ON client.id = project.client_id
GROUP BY client_id
HAVING project_count = (SELECT COUNT(id) AS count
                       FROM project
                       GROUP BY client_id
                       ORDER BY count DESC
                       LIMIT 1)
