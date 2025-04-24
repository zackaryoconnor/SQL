-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it


-- Create a televisions table


--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
CREATE TABLE televisions (id int, model_name varchar, screen_size varchar, resolution int, price decimal, release_date timestamp, photo_url varchar);

-- Insert 4 televisions into the tv_models table
INSERT INTO televisions (id, model_name, screen_size, resolution, price, release_date, photo_url) VALUES 
(1, 'Samsung', 65, '4K UHD', 2199.99, '2022-03-15', 'https://example.com/samsung-qn90b.jpg'),
(2, 'LG', 55, '4K UHD', 1499.99, '2022-04-10', 'https://example.com/lg-c2.jpg'),
(3, 'Sony', 65, '4K UHD', 1999.99, '2022-05-20', 'https://example.com/sony-a80k.jpg'),
(4, 'TCL', 75, '4K UHD', 1299.99, '2022-02-01', 'https://example.com/tcl-6series.jpg');


-- Select all entries from the tv_models table
select * from televisions;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
ALTER TABLE televisions DROP COLUMN resolution;

ALTER TABLE televisions add column vertical_resolution int;
ALTER TABLE televisions add column horizontal_resolution int;