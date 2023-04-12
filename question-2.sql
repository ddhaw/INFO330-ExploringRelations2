-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName || " " || employees.LastName AS "Full Name", invoices.* FROM employees
INNER JOIN invoices ON employees.title = "Sales Support Agent"
ORDER BY employees.LastName;
