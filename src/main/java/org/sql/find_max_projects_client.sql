SELECT c.NAME,COUNT(p.ID)AS PROJECT_COUNT
FROM client c
LEFT JOIN project p ON c.ID=p.CLIENT_ID
GROUP BY c.NAME
ORDER BY PROJECT_COUNT DESC;