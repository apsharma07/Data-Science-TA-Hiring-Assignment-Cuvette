SELECT 
    g.Name AS Genre,
    SUM(il.Quantity) AS TotalTracksSold
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.GenreId
ORDER BY TotalTracksSold DESC
LIMIT 1;
