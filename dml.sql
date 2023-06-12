-- customer1
INSERT INTO customer(
    first_name,
    last_name,
    email,
    age,
    credit_score

)
VALUES(
    'Robert',
    'Carlson',
    'robert@yahoo.com',
    20,
    780
)
-- customer2
INSERT INTO customer(
    first_name,
    last_name,
    email,
    age,
    credit_score
)
VALUES(
    'Ahmed',
    'Mosh',
    'Mosh777@yahoo.com',
    22,
    550
)
-- customer2
INSERT INTO customer(
    first_name,
    last_name,
    email,
    age,
    credit_score
)
VALUES(
    'Dave',
    'Joseph',
    'davejo@yahoo.com',
    45,
    850
)

SELECT * FROM customer

-- cars1
INSERT INTO cars(
    make,
    model,
    car_year,
    price
)
VALUES(
    'BMW',
    '5 series',
    2018,
    3500.00
)
-- cars
INSERT INTO cars(
    make,
    model,
    car_year,
    price
)
VALUES(
    'Audi',
    'e-torn GT',
    2022,
    1750.88
)
-- cars3
INSERT INTO cars(
    make,
    model,
    car_year,
    price
)
VALUES(
    'Mercedes',
    'CLA250',
    2022,
    5450.88
)
SELECT * FROM cars

-- staff 1
INSERT INTO staff(
    first_name,
    last_name
)
VALUES(
    'Mike',
    'Tyson'
)
-- staff 2
INSERT INTO staff(
    first_name,
    last_name
)
VALUES(
    'Alex',
    'Oscar'
)
-- staff 3
INSERT INTO staff(
    first_name,
    last_name
)
VALUES(
    'Mohammed',
    'Ali'
)
-- sales
INSERT INTO sales(
    customer_id,
    car_id,
    staff_id,
    discount
)
VALUES(
    1,
    1,
    1,
    25
)
INSERT INTO sales(
    customer_id,
    car_id,
    staff_id,
    discount
)
VALUES(
    2,
    2,
    2,
    32
)
INSERT INTO sales(
    customer_id,
    car_id,
    staff_id,
    discount
)
VALUES(
    3,
    3,
    3,
    15
)
SELECT * FROM sales