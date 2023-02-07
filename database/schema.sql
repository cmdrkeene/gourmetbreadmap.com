-- Restaurant
--
-- Address Model:
--
-- Address Lines 1-4
-- Locality (city)
-- Region (state)
-- Postcode (zipcode)
-- Country (iso 2-letter)
-- Address lines 1-4 can hold components:
--   Building
--   Sub-Building
--   Premise number (house number)
--   Premise Range
--   Thoroughfare
--   Sub-Thoroughfare
--   Double-Dependent Locality
--   Sub-Locality
--
-- Restaurant Type: {sit-down, fast-food, food-cart, bakery, bar}
-- 
CREATE TABLE restaurants (
	restaurant_id INTEGER PRIMARY KEY,
    restaurant_type TEXT NOT NULL,
	public_name TEXT NOT NULL,
    website TEXT,
	email TEXT,
	phone TEXT NOT NULL UNIQUE,
    address_line_1 TEXT NOT NULL,
    address_line_2 TEXT,
    address_line_3 TEXT,
    address_line_4 TEXT,
    neighborhood TEXT,
    locality TEXT NOT NULL,
    region TEXT NOT NULL,
    postal_code TEXT NOT NULL,
    country TEXT NOT NULL,
    latitude TEXT,
    longitude TEXT
);