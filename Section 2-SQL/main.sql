-- 1. Top 5 Customers by Total Purchase Amount
SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName,
    SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 5;

-- 2. Most Popular Genre by Total Tracks Sold
SELECT 
    g.Name AS Genre,
    SUM(il.Quantity) AS TotalTracksSold
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.GenreId
ORDER BY TotalTracksSold DESC
LIMIT 1;

-- 3. Employees Who Are Managers Along With Their Subordinates
SELECT 
    m.EmployeeId AS ManagerId,
    CONCAT(m.FirstName, ' ', m.LastName) AS ManagerName,
    e.EmployeeId AS EmployeeId,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName
FROM Employee e
JOIN Employee m ON e.ReportsTo = m.EmployeeId
ORDER BY ManagerId;

-- 4. Most Sold Album for Each Artist
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

-- 5. Monthly Sales Trends for 2013
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
    ROUND(SUM(Total), 2) AS MonthlySales
FROM Invoice
WHERE YEAR(InvoiceDate) = 2013
GROUP BY Month
ORDER BY Month;
