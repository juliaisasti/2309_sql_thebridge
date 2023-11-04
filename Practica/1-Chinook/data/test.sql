-- 2
SELECT *
FROM employees
WHERE Title="Sales Support Agent";

-- 3
SELECT *
FROM tracks
WHERE Composer LIKE "%AC/DC%";

-- 4
SELECT FirstName || " " || LastName AS Nombre_completo,
CustomerId AS id,
Country AS Pais
FROM customers
WHERE NOT country = "USA"; --country <> USA

-- 5
SELECT 
FirstName || " " || LastName AS Nombre_completo,
City || " " || State ||" " || country AS Direccion,
Email
FROM employees
WHERE title = "Sales Support Agent";

-- 8 
SELECT
InvoiceId,
SUM(Quantity) AS N_articulos
FROM invoice_items
WHERE InvoiceId IN (37)
GROUP BY 1;

-- 9
SELECT artists.Name,
COUNT(tracks.TrackId)
FROM tracks
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE artists.name = "AC/DC"
GROUP BY 1;

-- 12
SELECT 
strftime("%Y", InvoiceDate) AS Año,
COUNT(InvoiceId)
FROM invoices
WHERE Año IN ("2009","2011")
GROUP BY 1;

