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
    order_date TIMESTAMP WITH TIME ZONE NOT NULL,
    customer INT REFERENCES customers NOT NULL
);

CREATE TABLE bike_orders(
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders NOT NULL,
    bike_code VARCHAR(25) REFERENCES bikes NOT NULL,
    note VARCHAR(25) NOT NULL,
    cost NUMERIC NOT NULL
);
