SELECT 
    m.EmployeeId AS ManagerId,
    CONCAT(m.FirstName, ' ', m.LastName) AS ManagerName,
    e.EmployeeId AS EmployeeId,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName
FROM Employee e
JOIN Employee m ON e.ReportsTo = m.EmployeeId
ORDER BY ManagerId;
