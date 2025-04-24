DROP TABLE IF EXISTS tv_models;

CREATE TABLE tv_models (
    id SERIAL PRIMARY KEY,
    model_name TEXT,
    screen_size NUMERIC,
    resolution TEXT,
    price NUMERIC,
    release_date DATE,
    photo_url TEXT
);

INSERT INTO tv_models (model_name, screen_size, resolution, price, release_date, photo_url)
VALUES
('Hisense U8H', 55, '4K UHD', 799.99, '2022-07-21', 'https://example.com/u8h.jpg'),
('Panasonic HX800', 65, '4K UHD', 1099.99, '2021-09-10', 'https://example.com/hx800.jpg'),
('Vizio M-Series Quantum', 70, '4K UHD', 849.99, '2023-03-14', 'https://example.com/mseries.jpg'),
('Philips Ambilight', 58, '4K UHD', 949.99, '2022-11-02', 'https://example.com/philips.jpg');

SELECT * FROM tv_models;

ALTER TABLE tv_models DROP COLUMN resolution;
ALTER TABLE tv_models ADD COLUMN vertical_resolution INTEGER;
ALTER TABLE tv_models ADD COLUMN horizontal_resolution INTEGER;
