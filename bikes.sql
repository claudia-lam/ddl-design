CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL
);

CREATE TABLE bikes(
    id VARCHAR(25) PRIMARY KEY,
    bike_name VARCHAR(25) NOT NULL,
    cost NUMERIC NOT NULL
);

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    bike_model TEXT REFERENCES bikes NOT NULL,
    order_date TIMESTAMP WITH TIME ZONE NOT NULL,
    note VARCHAR(25) NOT NULL,
    total_cost NUMERIC REFERENCES bikes NOT NULL,
    customer TEXT REFERENCES customers NOT NULL
);

CREATE TABLE bike_order(
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders NOT NULL,
    bike_code VARCHAR(25) REFERENCES bikes NOT NULL
);
