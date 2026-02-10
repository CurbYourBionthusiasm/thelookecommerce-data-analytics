
--DATA QUALITY AND EXPLORATION--
--dataset: thelook_ecommerce
--Purpose: understanding of thelook_ecommerce dataset
-======================================================================

--1. Order statuses: (descending)
--Shipped, Complete, Processing, Cancelled, Returned
--Question: What statuses are there and which are valid sales
--
--Observation: For calcualtion we should use Complete status-
--Orders with shipped status is more abundant but,
--we should focus on Complete 

SELECT 
  status,
  COUNT(*) AS cnt
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY cnt DESC;

--2. Order item statuses: (descending)
--Shipped, Complete, Processing, Cancelled, Returned
--Question: Does order items statuses correspond to order statuses
--
--Observation: Yes, but we should only consider Complete status,
--also there are more Order items than orders

SELECT 
  status,
  COUNT(*) AS cnt
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY status
ORDER BY cnt DESC;

--3. Order_id count vs order list count
--Question: Are there any duplicates,
--does each row corresponds to each row
--
--Observation: row numbers are equal to order_id, so no duplicates

SELECT 
  COUNT(DISTINCT(order_id)) AS order_cnt,
  COUNT(*) AS cnt
FROM `bigquery-public-data.thelook_ecommerce.orders`;

--4. Order id vs item order_id
--Question: Does each item has their order id and does it correspond
--to order list
--
--Observation: Yes, each item has their own order id, JOIN can be used safely
--No missing orders without items

SELECT 
  COUNT(DISTINCT(o.order_id)) AS order_cnt,
  COUNT(DISTINCT(oi.order_id)) AS orders_with_items
FROM `bigquery-public-data.thelook_ecommerce.orders` o 
JOIN `bigquery-public-data.thelook_ecommerce.order_items` oi
ON o.order_id = oi.order_id
WHERE o.status = 'Complete'

--5. Outliers on number of items per order --Question: Are there any 
orders with outlier number of items, --which could affect analysis -- 
--Observation: 
--Average 1,46 items per order, Max: 4
--No outliers that will affect the calculations

SELECT
COUNT(*) AS order_numer,
ROUND(AVG(item_cnt),2) AS average_items_per_order,
MAX(item_cnt) AS max_items_per_order
FROM
(SELECT 
  order_id,
  COUNT(*) AS item_cnt
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY order_id);

--6. Distribution of prices
--Question: Are there some prices that are wrong, negative, or too big.
--
--Observation:
--There are no prices that are non typical or problematic. We can analyse
--sale prices freely.

SELECT
  MIN(sale_price) AS min_price,
  MAX(sale_price) AS max_price,
  AVG(sale_price) AS avg_price
FROM order_items
WHERE status = 'Complete';

--7. Timeline of orders
--Question: What is the time line and are there any time gaps between orders
--
--Observation:
--No gaps between orders time line seems fine to analizeSELECT 
DATE_TRUNC(DATE(created_at),MONTH) AS month,
COUNT(*) AS orders_cnt
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY month
ORDER BY month;

SELECT
  MIN(created_at) AS first_date,
  MAX(created_at) AS last_date
FROM orders;


