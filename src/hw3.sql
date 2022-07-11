CREATE TABLE products
(
    id            SERIAL PRIMARY KEY,
    product_name  VARCHAR(30) NOT NULL,
    company       VARCHAR(20) NOT NULL,
    product_count INT DEFAULT 0,
    price         NUMERIC     NOT NULL,
    isDiscounted  BOOL
);
INSERT INTO products (product_name, company, product_count, price, isDiscounted)
VALUES ('iPhone X', 'Apple', 3, 76000, false),
       ('iPhone 8', 'Apple', 2, 71000, true),
       ('iPhone 7', 'Apple', 5, 42000, true),
       ('Galaxy S9', 'Samsung', 2, 46000, false),
       ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
       ('Desire 12', 'HTC', 5, 28000, true),
       ('Nokia 9', 'HMD Global', 6, 38000, true);

--1--
SELECT *
FROM products
where company != 'HTC';
--2--
SELECT *
FROM products
where company = 'Apple'
  AND price < 75000;
--3--
SELECT *
FROM products
WHERE price >= 46000;
--4--
SELECT *
FROM products
order by price DESC
    LIMIT 2;
--5--

SELECT product_name,price AS min_price
FROM products
ORDER BY price
    LIMIT 1;

--6--
SELECT *
FROM products
where isDiscounted = true;
--7--
SELECT *
FROM products
where isDiscounted = false;
--8--
SELECT *
FROM products
ORDER BY price DESC;
--9--
SELECT sum(price)
FROM products;
--10--
SELECT company, count(*) AS model_count
FROM products
GROUP BY company
HAVING count(*) <= 2;




