-- 1. The average square footage of all offices.
SELECT AVG(sq_ft) FROM offices;

-- 2. The total number of apartments.
SELECT COUNT(*) FROM apartments;

-- 3. The apartments where there is no tenant
SELECT * FROM apartments WHERE tenant IS NULL;

-- 4. The names of all of the companies
SELECT company FROM offices;

-- 5. The number of cubicles and bathrooms in the 3rd office
SELECT cubicles, bathrooms FROM offices WHERE office_number = 203;

-- 6. The storefronts that have kitchens
SELECT * FROM storefronts WHERE kitchen = true;

-- 7. The storefront with the highest square footage and outdoor seating
SELECT * FROM storefronts
WHERE outdoor_seating = true
ORDER BY sq_ft DESC
LIMIT 1;

-- 8. The office with the lowest number of cubicles
SELECT * FROM offices
ORDER BY cubicles ASC
LIMIT 1;

-- 9. The office with the most cubicles and bathrooms
SELECT * FROM offices
ORDER BY cubicles DESC, bathrooms DESC
LIMIT 1;
