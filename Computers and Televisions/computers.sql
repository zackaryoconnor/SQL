-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it

-- Create a computers table


-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports
CREATE TABLE computers (id serial, make varchar, model varchar, cpu_speed int, memory_size int, price int, release_date timestamp, photo_url varchar, storage_amount int, number_usb_ports int, number_firewire_ports int, number_thunderbolt_ports int);


-- Insert 4 computers into the computers table
INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (1, 'Apple', 'MacBook Pro 16', 3.2, 32, 2499.99, '2021-10-26', 'https://example.com/mbp16.jpg', 1000, 3, 0, 4);

INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (2, 'Dell', 'XPS 15', 2.8, 16, 1799.99, '2022-03-15', 'https://example.com/xps15.jpg', 512, 4, 0, 2);

INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (3, 'Lenovo', 'ThinkPad X1 Carbon', 2.4, 16, 1599.99, '2022-01-10', 'https://example.com/x1carbon.jpg', 256, 2, 0, 2);

INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (4, 'HP', 'Spectre x360', 2.6, 32, 1899.99, '2022-06-01', 'https://example.com/spectre.jpg', 1000, 3, 0, 2);


-- Select all entries from the computers table
SELECT * FROM computers;


-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
ALTER TABLE computers DROP COLUMN storage_amount;

ALTER TABLE computers ADD COLUMN storage_type varchar;
ALTER TABLE computers ADD COLUMN storage_size int;