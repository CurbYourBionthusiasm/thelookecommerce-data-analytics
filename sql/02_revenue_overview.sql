=============================================================================
-- Business Question:
-- What is the overall performance of the business in terms of 
-- revenue, users, and orders?

-- Dataset:
-- thelook_ecommerce

-- Description:
-- This query calculates key high-level business metrics to provide a snapshot
-- of overall e-commerce performance.

-- Metrics:
-- 1. Total Users 
-- 2. Total Orders 
-- 3. Total Revenue 
-- 4. Average Order Value (AOV)
-- 5. Revenue per User
-- 6. Orders per User

-- Why it matters:
-- These metrics provide a foundation for understanding business performance
-- and help identify whether growth is driven by more users, higher spending,
-- or increased purchase frequency.
=============================================================================

SELECT
  COUNT(DISTINCT user_id) AS total_users,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(sale_price),2) AS total_revenue,
  ROUND(SUM(sale_price) / COUNT(DISTINCT order_id), 2) AS AOV,
  ROUND(SUM(sale_price) / COUNT(DISTINCT(user_id)),2) AS revenue_per_user,
  ROUND(COUNT(DISTINCT(order_id)) / COUNT(DISTINCT(user_id)),2) AS orders_per_user
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
