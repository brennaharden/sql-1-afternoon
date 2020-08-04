--Table - person

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    height INT,
    city TEXT,
    favorite_color TEXT
);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Brenna', 29, 170, 'Pocatello', 'blue'),
('Bitsy', 26, 156, 'Ririe', 'pink'),
('Tove', 2, 25, 'Pocatello', 'beige'),
('Lucy', 6, 91, 'Ririe', 'purple'),
('Kivi', 4, 75, 'Ririe', 'pink');


SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age > 30 OR age < 20;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

--Table - orders

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(40),
    product_price NUMERIC,
    quantity INT
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(120, 'TY Beanie Baby', 8.99, 1),
(121, 'Dragon Drink', 5.29, 1),
(120, 'Scooby Snacks', 2.99, 1),
(120, 'Fuit Gummies', 4.99, 3),
(121, 'Chinkin Nuggets', 3.59, 2);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 121;

--Table - artist

INSERT INTO artist
(name)
VALUES
('Fatboy Slim'),
('Tiesto'),
('Grimes');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

--Table - employee

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee WHERE reports_to = 
(SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards');

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

--Table - invoice

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT COUNT(*) FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;

