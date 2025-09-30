CREATE OR REPLACE TABLE <dataset>.orders (
  order_id INT64,
  customer_id INT64,
  order_date DATE,
  status STRING,
  total_amount NUMERIC
);

INSERT INTO <dataset>.orders (order_id, customer_id, order_date, status, total_amount)
VALUES
  (1, 101, DATE '2025-01-01', 'PENDING', 120.50),
  (2, 102, DATE '2025-01-02', 'DELIVERED', 300.00),
  (3, 103, DATE '2025-01-03', 'SHIPPED', 85.75),
  (4, 101, DATE '2025-01-04', 'CANCELLED', 0.00),
  (5, 104, DATE '2025-01-05', 'PENDING', 150.00),
  (6, 105, DATE '2025-01-06', 'DELIVERED', 500.25),
  (7, 106, DATE '2025-01-07', 'SHIPPED', 220.40),
  (8, 107, DATE '2025-01-08', 'DELIVERED', 99.99),
  (9, 108, DATE '2025-01-09', 'PENDING', 75.00),
  (10, 109, DATE '2025-01-10', 'DELIVERED', 640.10),
  (11, 110, DATE '2025-01-11', 'SHIPPED', 120.00),
  (12, 101, DATE '2025-01-12', 'DELIVERED', 410.00),
  (13, 111, DATE '2025-01-13', 'CANCELLED', 0.00),
  (14, 112, DATE '2025-01-14', 'PENDING', 200.20),
  (15, 113, DATE '2025-01-15', 'DELIVERED', 315.75),
  (16, 114, DATE '2025-01-16', 'SHIPPED', 140.00),
  (17, 115, DATE '2025-01-17', 'DELIVERED', 890.00),
  (18, 116, DATE '2025-01-18', 'PENDING', 55.50),
  (19, 117, DATE '2025-01-19', 'SHIPPED', 260.30),
  (20, 118, DATE '2025-01-20', 'DELIVERED', 799.90);

