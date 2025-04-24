DROP TABLE IF EXISTS computers;

CREATE TABLE computers (
    id SERIAL PRIMARY KEY,
    make TEXT,
    model TEXT,
    cpu_speed NUMERIC,
    memory_size INTEGER,
    price NUMERIC,
    release_date DATE,
    photo_url TEXT,
    storage_amount INTEGER,
    number_usb_ports INTEGER,
    number_firewire_ports INTEGER,
    number_thunderbolt_ports INTEGER
);

INSERT INTO computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports)
VALUES
('Acer', 'Swift 5', 2.5, 8, 899.99, '2023-05-12', 'https://example.com/acer.jpg', 256, 2, 0, 1),
('Asus', 'ROG Zephyrus G14', 3.8, 16, 1599.99, '2022-10-01', 'https://example.com/rog.jpg', 1024, 4, 1, 2),
('Microsoft', 'Surface Laptop 5', 3.0, 16, 1399.99, '2023-02-28', 'https://example.com/surface.jpg', 512, 2, 0, 1),
('MSI', 'Prestige 14', 3.3, 32, 1899.99, '2021-12-18', 'https://example.com/msi.jpg', 2048, 3, 1, 1);

SELECT * FROM computers;

ALTER TABLE computers DROP COLUMN storage_amount;
ALTER TABLE computers ADD COLUMN storage_type TEXT;
ALTER TABLE computers ADD COLUMN storage_size INTEGER;
