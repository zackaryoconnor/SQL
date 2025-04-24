-- 1. The average square footage of all offices.
SELECT AVG(sq_ft) FROM office;

-- 2. The total number of apartments.
SELECT COUNT(*) FROM apartments;

-- 3. The apartments where there is no tenant
SELECT * FROM apartments WHERE occupied = FALSE;

-- 4. The names of all of the companies
SELECT array_agg(company) FROM office;

-- 5. The number of cubicles and bathrooms in the 3rd office
SELECT cubicles, bathrooms FROM office OFFSET 2 LIMIT 1;

-- 6. The storefronts that have kitchens
SELECT * FROM storefront WHERE kitchen = TRUE;

-- 7. The storefront with the highest square footage and outdoor seating
SELECT * FROM storefront WHERE outdoor_seating = TRUE ORDER BY sq_ft DESC LIMIT 1;

-- 8. The office with the lowest number of cubicles
SELECT MIN(cubicles) FROM office;

-- 9. The office with the most cubicles and bathrooms
SELECT * FROM office ORDER BY cubicles DESC, bathrooms DESC LIMIT 1;