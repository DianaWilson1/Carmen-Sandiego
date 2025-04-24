-- Apartments
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES
(101, 2, 1, '123 Main St', 'Alice Smith', true, 850, 1200),
(102, 3, 2, '125 Main St', NULL, false, 950, 1500),
(103, 1, 1, '127 Main St', 'Bob Jones', true, 600, 900);

-- Offices
INSERT INTO offices (office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price)
VALUES
(201, 2, 1500, 20, 2, '200 Market St', 'TechCorp', true, 3500),
(202, 1, 800, 10, 1, '202 Market St', 'Designify', true, 2000),
(203, 3, 1800, 25, 3, '204 Market St', 'BuildIt Inc', false, 4000);

-- Storefronts
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating)
VALUES
('50 Commercial Ave', true, 5000, true, 1200, 'Samantha Ray', true),
('52 Commercial Ave', false, 4000, false, 800, 'Jason Lee', false),
('54 Commercial Ave', true, 6000, true, 1500, 'Kim Tran', false);
