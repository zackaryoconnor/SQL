--enter your seed data below
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