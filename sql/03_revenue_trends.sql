=============================================================================
-- Business Question:
-- How do key business metrics evolve over time?

-- Dataset:
-- thelook_ecommerce

-- Description:
-- This query calculates core e-commerce KPIs on a monthly level 
-- to evaluate business performance and growth drivers.

-- Metrics:
-- 1. Total Orders
-- 2. Total Users
-- 3. Total Revenue
-- 4. Average Order Value (AOV)
-- 5. Revenue per User
-- 6. Orders per User

-- Why it matters:
-- These metrics help identify whether revenue growth is driven by 
-- user acquisition, increased purchase frequency, or higher basket value.
=============================================================================

WITH order_revenue AS (
SELECT 
  order_id,
  user_id, 
  SUM(sale_price) AS revenue_per_order, 
  DATE_TRUNC(DATE(created_at),MONTH) AS month
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY DATE_TRUNC(DATE(created_at),MONTH), order_id
ORDER BY month
),

monthly_revenue AS (

SELECT
  month,
  COUNT(DISTINCT(order_id)) AS total_orders,
  COUNT(DISTINCT(user_id)) AS total_users
  SUM(revenue_per_order) AS total_revenue,

FROM order_revenue
GROUP BY month
)

SELECT
    month,
    total_orders,
    total_users,
    total_revenue,

    ROUND(total_revenue / total_orders,2) AS AOV,
    ROUND(total_revenue / total_users,2) AS revenue_per_user,
    ROUND(total_orders / total_users,2) AS orders_per_user

FROM monthly_revenue
ORDER BY month;

;
