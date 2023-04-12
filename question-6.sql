-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT tracks.TrackId, tracks.Name, tracks.composer, invoice_items.* FROM tracks, invoice_items
WHERE tracks.TrackId = invoice_items.TrackId
ORDER BY tracks.TrackId;
