-- 4 tables 
-- customer
-- sales
-- cars
-- staff
-- creat customer table
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER,
    email VARCHAR(100),
    credit_score INTEGER
)
-- creat sales table
CREATE TABLE sales(
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    discount INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    -- FOREIGN KEY (car_id) REFERENCES car(car_id),
    -- FOREIGN KEY (staff_id) REFERENCES staff(staff_id_id)
)
-- creat cars table
CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year INTEGER,
    price NUMERIC(6,2) NOT NULL
)
-- creat staff table
CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)
ALTER TABLE sales
ADD FOREIGN KEY (car_id) REFERENCES cars(car_id);
ALTER TABLE sales
ADD FOREIGN KEY (staff_id) REFERENCES staff(staff_id);

SELECT * FROM customer
-- #Function
CREATE OR REPLACE FUNCTION replace_customer(
    c_id INTEGER,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
)
RETURNS VOID

LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO customer(customer_id, first_name, last_name)
    VALUES(c_id,f_name,l_name);
END
$MAIN$;
SELECT replace_customer(3, 'Sznchez','Pablo')

SELECT * FROM cars

CREATE OR REPLACE FUNCTION eddit_price(
    cr_id INTEGER,
    car_make VARCHAR(50),
    car_model VARCHAR(50),
    cr_year INTEGER,
    car_price NUMERIC(12,2)
)
RETURNS VOID

LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO cars(car_id, make, model, car_year, price)
    VALUES(cr_id, car_make, car_model, cr_year, car_price);
END
$MAIN$;
SELECT eddit_price(3,'Mercedes','CLA255',2023,59500.29)
