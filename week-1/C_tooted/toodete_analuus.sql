
-- UrbanStyle: 1. nädal
-- Roll C: Toodete analüüs
-- Koostaja: Kärt

-- 1. Toodete koguarv
SELECT COUNT(*) AS toodete_arv
FROM products;

-- 2. Toodete arv kategooriate kaupa
SELECT category, COUNT(*) AS toodete_arv
FROM products
GROUP BY category
ORDER BY toodete_arv DESC;

-- 3. Kümme kõige kallimat toodet
SELECT product_name, category, retail_price
FROM products
ORDER BY retail_price DESC
LIMIT 10;

-- 4. Kümme kõige odavamat toodet
SELECT product_name, category, retail_price
FROM products
ORDER BY retail_price ASC
LIMIT 10;

-- 5. Puuduvate andmete kontroll
SELECT
    COUNT(*) - COUNT(retail_price) AS puuduvad_hinnad,
    COUNT(*) - COUNT(category) AS puuduvad_kategooriad
FROM products;
