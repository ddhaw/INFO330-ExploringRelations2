-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
 SELECT customers.FirstName || " " || customers.LastName AS "Full Name", invoices.InvoiceId, invoices.InvoiceDate, invoices.BillingAddress FROM customers
 INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
 WHERE Country = "Brazil"
 ORDER BY customers.LastName;
