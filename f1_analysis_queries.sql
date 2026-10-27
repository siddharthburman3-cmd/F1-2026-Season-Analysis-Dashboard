USE f1_database;

SELECT `Race Winner`, COUNT(*) AS Wins 
FROM f1_database.f1_db 
WHERE Status = 'Completed' 
GROUP BY `Race Winner` 
ORDER BY Wins DESC;

SELECT `Winning Team`, COUNT(*) AS Wins 
FROM f1_database.f1_db 
WHERE Status = 'Completed' 
GROUP BY `Winning Team` 
ORDER BY Wins DESC;

SELECT `Race Winner`, SUM(Laps) AS Total_Laps_Won 
FROM f1_database.f1_db 
WHERE Status = 'Completed' 
GROUP BY `Race Winner` 
ORDER BY Total_Laps_Won DESC;

SELECT Round, `Grand Prix`, Country, `Weekend Start`, `Weekend End` 
FROM f1_database.f1_db 
WHERE Status = 'Upcoming' 
ORDER BY Round ASC;