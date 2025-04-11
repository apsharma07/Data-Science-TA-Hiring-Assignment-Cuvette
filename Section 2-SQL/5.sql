SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
    ROUND(SUM(Total), 2) AS MonthlySales
FROM Invoice
WHERE YEAR(InvoiceDate) = 2013
GROUP BY Month
ORDER BY Month;
