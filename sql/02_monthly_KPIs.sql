=============================================================================
--Monthly business KPIs
--dataset: thelook_ecommerce
--Purpose: Calculate key business metrics for e-commerce performance

-- Metrics:
-- 1. Total revenue
-- 2. Number of orders
-- 3. Average order value (AOV)

-- Logic:
-- Step 1: Calculate revenue per order
-- Step 2: Aggregate results by month
=============================================================================

WITH order_revenue AS (
SELECT 
  order_id, 
  SUM(sale_price) AS revenue_per_order, 
  DATE_TRUNC(DATE(created_at),MONTH) AS month
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY DATE_TRUNC(DATE(created_at),MONTH), order_id
ORDER BY month
)

SELECT 
  month,
  COUNT(order_id) AS total_orders, 
  SUM(revenue_per_order) AS total_revenue,
  ROUND(AVG(order_revenue.revenue_per_order),2) AS avg_order_number
FROM order_revenue
GROUP BY month
ORDER BY month;
