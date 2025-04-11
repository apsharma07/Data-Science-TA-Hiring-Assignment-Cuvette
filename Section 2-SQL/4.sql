WITH AlbumSales AS (
    SELECT 
        a.ArtistId,
        a.Name AS ArtistName,
        al.Title AS AlbumTitle,
        SUM(il.Quantity) AS TotalSold,
        ROW_NUMBER() OVER (PARTITION BY a.ArtistId ORDER BY SUM(il.Quantity) DESC) AS rn
    FROM Artist a
    JOIN Album al ON a.ArtistId = al.ArtistId
    JOIN Track t ON al.AlbumId = t.AlbumId
    JOIN InvoiceLine il ON t.TrackId = il.TrackId
    GROUP BY a.ArtistId, a.Name, al.Title
)
SELECT ArtistName, AlbumTitle, TotalSold
FROM AlbumSales
WHERE rn = 1
ORDER BY ArtistName;
