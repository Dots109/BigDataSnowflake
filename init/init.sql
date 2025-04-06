DROP TABLE IF EXISTS data;

CREATE TABLE data (
    id INT,
    store_phone TEXT,
    customer_last_name TEXT,
    customer_first_name TEXT,
    customer_country TEXT,
    customer_pet_type TEXT,
    customer_pet_name TEXT,
    customer_pet_breed TEXT,
    seller_first_name TEXT,
    customer_age INT,
    customer_email TEXT,
    store_city TEXT,
    seller_email TEXT,
    seller_country TEXT,
    seller_last_name TEXT,
    product_name TEXT,
    customer_postal_code TEXT,
    product_category TEXT,
    product_quantity INT,
    sale_date DATE,
    product_price NUMERIC,
    seller_postal_code TEXT,
    sale_product_id INT,
    sale_customer_id INT,
    sale_total_price NUMERIC,
    store_name TEXT,
    sale_seller_id INT,
    store_state TEXT,
    sale_quantity INT,
    store_country TEXT,
    product_size TEXT,
    store_email TEXT,
    product_color TEXT,
    store_location TEXT,
    product_weight NUMERIC,
    product_reviews INT,
    pet_category TEXT,
    supplier_city TEXT,
    supplier_country TEXT
    product_material TEXT,
    product_brand TEXT,
    product_description TEXT,
    product_rating NUMERIC,
    product_release_date DATE,
    product_expiry_date DATE,
    supplier_contact TEXT,
    supplier_email TEXT,
    supplier_name TEXT,
    supplier_address TEXT,
    supplier_phone TEXT,
);

COPY data FROM '/data/MOCK_DATA1.csv' WITH CSV HEADER DELIMITER ',' NULL '' ESCAPE '"';
COPY data FROM '/data/MOCK_DATA2.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA3.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA4.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA5.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA6.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA7.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA8.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA9.csv' WITH CSV HEADER;
COPY data FROM '/data/MOCK_DATA.csv' WITH CSV HEADER;

\i /transform/transform.sql;