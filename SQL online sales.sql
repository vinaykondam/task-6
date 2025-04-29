-- Create the table
CREATE TABLE online_sales (
    order_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);
desc online_sales;

-- Insert sample data
INSERT INTO online_sales (order_id, product_id, order_date, amount) VALUES
(1001, 201, '2023-01-10', 150.00),
(1002, 202, '2023-01-12', 200.00),
(1003, 203, '2023-01-25', 300.00),
(1004, 204, '2023-02-05', 120.00),
(1005, 201, '2023-02-15', 180.00),
(1006, 202, '2023-03-01', 250.00),
(1007, 203, '2023-03-22', 100.00),
(1008, 204, '2023-03-30', 400.00),
(1009, 205, '2023-04-10', 500.00),
(1010, 206, '2023-04-21', 320.00),
(1011, 207, '2023-05-05', 150.00),
(1012, 208, '2023-05-18', 220.00),
(1013, 209, '2023-06-03', 330.00),
(1014, 210, '2023-06-19', 290.00),
(1015, 211, '2023-07-07', 420.00),
(1016, 212, '2023-07-27', 510.00),
(1017, 213, '2023-08-04', 600.00),
(1018, 214, '2023-08-18', 450.00),
(1019, 215, '2023-09-02', 380.00),
(1020, 216, '2023-09-29', 490.00);

select * from online_sales;
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date BETWEEN '2023-01-01' AND '2023-12-31'  -- Filter for year 2023
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;

-- Import CSV file i

