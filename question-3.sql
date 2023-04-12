-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT invoice_items.InvoiceLineId, tracks.name AS "Track Name", artists.name "Artist Name" FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
JOIN artists ON artists.ArtistId =
(SELECT ArtistId FROM albums WHERE AlbumId = tracks.AlbumId)
ORDER BY InvoiceLineId;
