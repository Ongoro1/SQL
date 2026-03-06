create schema assignment;
show search_path;
set search_path to assignment;

CREATE TABLE Assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10));

CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.Products;

INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

select * from assignment.Sales;

INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

select * from assignment.inventory;

SELECT * FROM assignment.Customers;

SELECT * FROM assignment.Sales;

SELECT * FROM assignment.Inventory;
--quiz 1
select * from assignment.customers;

select * from assignment.products;
--quiz 2
select count(*) from assignment.products;

--quiz 3
select product_name, price

from assignment.products

where price > 500;
--quiz 4

select AVG(price) as Average_price
from assignment.products;
--quiz 5

select sum(total_amount) as total_sales_amount
from assignment.sales;
--quiz 6
select distinct membership_status

from assignment.customers;
--quiz 7
select concat(first_name, ' ', last_name) as full_name
from assignment.customers;
--quiz 8
select * from assignment.products 
where category = 'Electronics';
--quiz 9
select max(price) as highest_price
from assignment.products
--quiz 10
select product_id, count(*) as number_of_sales
from assignment.sales 
group by product_id;
--quiz 11
select product_id,sum(quantity_sold) as Total_quantity
from assignment.sales
group by product_id;
--quiz 12
select min(price) as lowest_price
from assignment.products;
--quiz 13
select first_name 
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
join assignment.products p on s.product_id = p.product_id
where p.price > 1000;
--quiz 14
select p.product_name, sum(total_amount) as total_sales
from assignment.products as p
inner join assignment.sales as s on p.product_id = s.product_id
group by p.product_name;
--quiz 15
select c.customer_id, c.first_name,sum(total_amount) as total_spent
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name
order by total_spent desc;
--quiz 16
select C.first_name, C.last_name, P.product_name, S.quantity_sold
from assignment.customers as C
inner join assignment.sales as S on C.customer_id = S.customer_id
inner join assignment.products as P on S.product_id = P.product_id;
--quiz 17
select c1.customer_id as customer_id1, c1.first_name as first_name1, c2.customer_id as customer_id2, c2.first_name as first_name2, c1.membership_status
from assignment.customers c1
inner join assignment.customers c2 ON c1.membership_status = c2.membership_status
where c1.Customer_id < c2.Customer_id;
--quiz 18
select P.product_name,
 COUNT(S.Sale_id) as Total_Sales
from assignment.Products P
inner join assignment.sales S ON P.product_id = S.product_id
group by P.Product_id, P.Product_name
order by total_sales DESC;
--quiz 19
select * from assignment.products
where stock_quantity < 10;
--quiz 20
select P.product_name, S.total_amount
from assignment.sales AS S
join assignment.Products AS P ON S.product_id = P.product_id
where S.total_amount < 5;
-- question 21
SELECT DISTINCT c.*
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
JOIN assignment.products p ON s.product_id = p.product_id
WHERE p.category IN ('Electronics', 'Appliances');
--question 22
select p.product_name,
sum(stock_quantity * price) AS total_sales_amount
from assignment.products p
join assignment.sales s ON p.product_id = s.product_id
group by  p.product_name
order by total_sales_amount DESC;
-- question 23
SELECT DISTINCT c.*
FROM assignment.sales s
JOIN assignment.customers c
ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023;
--question 24
SELECT c.customer_id, c.first_name, c.last_name,
SUM(s.total_amount) AS total_sales
FROM assignment.customers c
JOIN assignment.sales s
ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_sales DESC
LIMIT 1;
--quiz 25
SELECT p.product_name, p.price
FROM assignment.products p
JOIN assignment.sales s
ON p.product_id = s.product_id
ORDER BY p.price DESC
LIMIT 1;
--quiz 26
SELECT COUNT(DISTINCT c.customer_id) AS total_customers
FROM assignment.customers c
JOIN assignment.sales s
ON c.customer_id = s.customer_id
JOIN assignment.products p
ON s.product_id = p.product_id
WHERE p.price > 500;
--quiz 27
SELECT COUNT(*) AS total_sales
FROM assignment.sales s
JOIN assignment.customers c
ON s.customer_id = c.customer_id
WHERE c.membership_status = 'Gold';
--quiz 28
SELECT p.product_name, i.stock_quantity
FROM assignment.products p
JOIN assignment.inventory i
ON p.product_id = i.product_id
WHERE i.stock_quantity < 10;
--quiz 29
SELECT customer_id,
SUM(quantity_sold) AS total_products_bought
FROM assignment.sales
GROUP BY customer_id
HAVING SUM(quantity_sold) > 5;
--quiz 30
SELECT product_id,
AVG(quantity_sold) AS average_quantity
FROM assignment.sales
GROUP BY product_id;
--quiz 31
SELECT COUNT(*) AS december_sales
FROM assignment.sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
AND EXTRACT(MONTH FROM sale_date) = 12;
--quiz 32
SELECT c.customer_id, c.first_name, c.last_name,
SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- quiz 33
SELECT DISTINCT p.product_name
FROM assignment.products p
JOIN assignment.sales s
ON p.product_id = s.product_id
WHERE p.stock_quantity < 5;

-- quiz 34
SELECT p.product_name,
SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

-- quiz 35
SELECT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s
ON c.customer_id = s.customer_id
WHERE s.sale_date <= c.registration_date + INTERVAL '7 days';

-- quiz 36
SELECT p.product_name, s.total_amount
FROM assignment.sales s
JOIN assignment.products p
ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;

--quiz 37
SELECT customer_id,
COUNT(*) AS purchase_count
FROM assignment.sales
GROUP BY customer_id
ORDER BY purchase_count DESC
LIMIT 1;

-- quiz 38
SELECT customer_id,
SUM(quantity_sold) AS total_quantity
FROM assignment.sales
GROUP BY customer_id;

-- quiz 39
(SELECT product_name, stock_quantity
FROM assignment.products
ORDER BY stock_quantity DESC
LIMIT 1)

UNION

(SELECT product_name, stock_quantity
FROM assignment.products
ORDER BY stock_quantity ASC
LIMIT 1);

-- quiz 40
SELECT p.product_name,
SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s
ON p.product_id = s.product_id
WHERE p.product_name ILIKE '%phone%'
GROUP BY p.product_name;

-- quiz 41
SELECT c.first_name, c.last_name,
p.product_name, s.total_amount
FROM assignment.customers c
INNER JOIN assignment.sales s
ON c.customer_id = s.customer_id
INNER JOIN assignment.products p
ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold';

-- quiz 42
SELECT p.category,
SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
ON s.product_id = p.product_id
GROUP BY p.category;

-- quiz 43.
SELECT p.product_name,
EXTRACT(YEAR FROM s.sale_date) AS year,
EXTRACT(MONTH FROM s.sale_date) AS month,
SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
ON s.product_id = p.product_id
GROUP BY p.product_name, year, month;

-- quiz 44
SELECT DISTINCT p.product_name
FROM assignment.sales s
JOIN assignment.inventory i
ON s.product_id = i.product_id
JOIN assignment.products p
ON p.product_id = i.product_id
WHERE i.stock_quantity > 0;

-- quiz 45
SELECT c.customer_id, c.first_name, c.last_name,
SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;

-- quiz 46
SELECT COUNT(DISTINCT product_id) AS unique_products
FROM assignment.sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023;

-- quiz 47
SELECT p.product_name
FROM assignment.products p
LEFT JOIN assignment.sales s
ON p.product_id = s.product_id
AND s.sale_date >= CURRENT_DATE - INTERVAL '6 months'
WHERE s.sale_id IS NULL;

-- quiz 48
SELECT p.product_name,
SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.products p
JOIN assignment.sales s
ON p.product_id = s.product_id
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_name;

-- quiz 49
SELECT c.customer_id, c.first_name, c.last_name,
SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 1;

-- quiz 50
SELECT p.product_name,
SUM(s.quantity_sold) AS total_sold
FROM assignment.products p
JOIN assignment.sales s
ON p.product_id = s.product_id
WHERE p.price > 200
GROUP BY p.product_name
HAVING SUM(s.quantity_sold) > 100;











