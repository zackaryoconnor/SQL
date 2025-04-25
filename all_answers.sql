-- Find Carmen
SELECT * FROM COUNTRY LIMIT 1;

SELECT name, population FROM country WHERE region = 'Southern Europe' ORDER BY population ASC LIMIT 1;

SELECT code FROM country WHERE name = 'Holy See (Vatican City State)';
SELECT language FROM countrylanguage WHERE countrycode = 'VAT';

SELECT countrycode, language FROM countrylanguage WHERE language = 'Italian' AND isofficial = 'T';

SELECT name FROM city WHERE countrycode = 'VAT' ORDER BY name ASC;

SELECT name FROM city WHERE countrycode = 'SMR' ORDER BY name ASC;

SELECT city.name FROM city JOIN country ON city.id = country.capital WHERE country.code = 'SMR';

SELECT name, countrycode FROM city WHERE population = 91084;

SELECT * FROM city WHERE name LIKE '%�%' ORDER BY name ASC LIST 2;
UPDATE city SET name = 'Brasília' WHERE name = 'Brasï¿½lia';
UPDATE city SET name = 'A Coruña (La Coruña)' WHERE name = 'A Coru�a (La Coru�a)';
UPDATE city SET name = 'Acapulco de Juárez' WHERE name = 'Acapulco de Ju�rez';










-- Computers
CREATE TABLE computers (id serial, make varchar, model varchar, cpu_speed int, memory_size int, price int, release_date timestamp, photo_url varchar, storage_amount int, number_usb_ports int, number_firewire_ports int, number_thunderbolt_ports int);


INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (1, 'Apple', 'MacBook Pro 16', 3.2, 32, 2499.99, '2021-10-26', 'https://example.com/mbp16.jpg', 1000, 3, 0, 4);

INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (2, 'Dell', 'XPS 15', 2.8, 16, 1799.99, '2022-03-15', 'https://example.com/xps15.jpg', 512, 4, 0, 2);

INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (3, 'Lenovo', 'ThinkPad X1 Carbon', 2.4, 16, 1599.99, '2022-01-10', 'https://example.com/x1carbon.jpg', 256, 2, 0, 2);

INSERT INTO computers (id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES (4, 'HP', 'Spectre x360', 2.6, 32, 1899.99, '2022-06-01', 'https://example.com/spectre.jpg', 1000, 3, 0, 2);


SELECT * FROM computers;

ALTER TABLE computers DROP COLUMN storage_amount;

ALTER TABLE computers ADD COLUMN storage_type varchar;
ALTER TABLE computers ADD COLUMN storage_size int;










-- Televisions
CREATE TABLE televisions (id int, model_name varchar, screen_size varchar, resolution int, price decimal, release_date timestamp, photo_url varchar);

INSERT INTO televisions (id, model_name, screen_size, resolution, price, release_date, photo_url) VALUES 
(1, 'Samsung', 65, '4K UHD', 2199.99, '2022-03-15', 'https://example.com/samsung-qn90b.jpg'),
(2, 'LG', 55, '4K UHD', 1499.99, '2022-04-10', 'https://example.com/lg-c2.jpg'),
(3, 'Sony', 65, '4K UHD', 1999.99, '2022-05-20', 'https://example.com/sony-a80k.jpg'),
(4, 'TCL', 75, '4K UHD', 1299.99, '2022-02-01', 'https://example.com/tcl-6series.jpg');

select * from televisions;

ALTER TABLE televisions DROP COLUMN resolution;

ALTER TABLE televisions add column vertical_resolution int;
ALTER TABLE televisions add column horizontal_resolution int;










-- Realty
CREATE DATABASE realty_db;

CREATE TABLE apartments (id serial primary key, apartment_number int, bedrooms int, bathrooms int, address varchar, tenant varchar, occupied boolean, sq_ft int, price int);

CREATE TABLE office (id serial primary key, office_number int, floors int, sq_ft int, cubicles int, bathrooms int, address varchar, company varchar, occupied boolean, price int);

CREATE TABLE storefront (address varchar, occupied boolean, price int, kitchen boolean, sq_ft int, owner varchar, outdoor_seating boolean);


INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price) VALUES
(101, 2, 1, '123 Maple Street', 'Alice Johnson', TRUE, 850, 1500),
(202, 3, 2, '456 Oak Avenue', 'Bob Smith', TRUE, 1200, 2200),
(303, 1, 1, '789 Pine Lane', NULL, FALSE, 600, 1000);


INSERT INTO office (office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES
(12, 2, 3000, 20, 2, '1001 Corporate Blvd', 'TechNova Inc.', TRUE, 7500),
(34, 1, 1500, 10, 1, '505 Business Park', 'Acme Co.', TRUE, 4500),
(56, 3, 4500, 30, 3, '789 Enterprise Rd', NULL, FALSE, 9000);


INSERT INTO storefront (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) Values
('321 Market Street', TRUE, 3200, TRUE, 1200, 'Sara Nguyen', TRUE),
('654 Commerce Ave', FALSE, 2800, FALSE, 1000, NULL, FALSE),
('987 Retail Row', TRUE, 4000, TRUE, 1500, 'Local Goods LLC', TRUE);


SELECT AVG(sq_ft) FROM office;

SELECT COUNT(*) FROM apartments;

SELECT * FROM apartments WHERE occupied = FALSE;

SELECT array_agg(company) FROM office;

SELECT cubicles, bathrooms FROM office OFFSET 2 LIMIT 1;

SELECT * FROM storefront WHERE kitchen = TRUE;

SELECT * FROM storefront WHERE outdoor_seating = TRUE ORDER BY sq_ft DESC LIMIT 1;

SELECT MIN(cubicles) FROM office;

SELECT * FROM office ORDER BY cubicles DESC, bathrooms DESC LIMIT 1;










-- NFL
SELECT name FROM teams;

SELECT stadium FROM teams WHERE conference = 'NFC';

SELECT head_coach FROM teams WHERE conference = 'AFC' AND division = 'South';

SELECT COUNT(name) FROM players;

SELECT name, head_coach from teams WHERE conference = 'NFC' AND division = 'North' OR conference = 'AFC' AND division = 'East';

SELECT salary FROM players ORDER BY salary DESC LIMIT 50;

SELECT ROUND(AVG(salary), 2) FROM players;

SELECT name, position FROM players WHERE salary > '10000000';

SELECT name FROM players ORDER BY salary DESC LIMIT 1;

SELECT name, position FROM players ORDER BY salary ASC LIMIT 100;

SELECT ROUND(AVG(salary), 2) FROM players WHERE position = 'DE';

SELECT players.name, teams.name FROM players, teams WHERE players.team_id=teams.id AND teams.name LIKE 'Buffalo Bills';

SELECT SUM(players.salary) FROM players, teams WHERE players.team_id = teams.id AND teams.name LIKE 'New York Giants';

SELECT players.name, players.salary FROM players, teams WHERE players.team_id = teams.id AND teams.name LIKE 'Green Bay Packers' ORDER BY salary ASC LIMIT 1;










-- Flights
SELECT * FROM airports WHERE airports.city = 'New York';
SELECT * FROM airports WHERE airports.city = 'Paris';
SELECT COUNT(*) FROM routes JOIN airports ON routes.origin_id = airports.id WHERE airports.city = 'New York';
SELECT COUNT(*) FROM routes JOIN airports ON routes.dest_id = airports.id WHERE airports.city = 'Paris';