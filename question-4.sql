-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName || " " || employees.LastName AS "Agent With the Most Sales in 2010" FROM employees, invoices
WHERE title = "Sales Support Agent"
AND employees.EmployeeId = (SELECT SupportRepId FROM customers)
AND invoices.InvoiceDate LIKE '%2010%'
GROUP BY employees.FirstName
ORDER BY SUM(invoices.total)
LIMIT 1;
