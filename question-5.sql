-- What was the most purchased track of 2013?
SELECT tracks.Name AS "Most Purchased Track of 2013" FROM tracks, invoice_items
GROUP BY tracks.Name
ORDER BY COUNT(invoice_items.TrackId)
LIMIT 1;
