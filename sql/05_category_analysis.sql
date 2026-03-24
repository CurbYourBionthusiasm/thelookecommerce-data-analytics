=============================================================================
-- Business Question:
-- Which product categories generate higher or lower revenue per order?

-- Dataset:
-- thelook_ecommerce

-- Description:
-- This query analyzes product categories by calculating total revenue,
-- number of orders, and average revenue per order to identify differences
-- in category performance.

-- Metrics:
-- 1. Number of orders (by category)
-- 2. Total revenue (by category)
-- 3. Revenue per order

-- Why it matters:
-- Identifying categories with lower revenue per order highlights opportunities
-- to increase basket size through upselling, bundling, or pricing strategies.

-- Note:
-- One order can include multiple product categories, therefore this analysis
-- approximates performance by distributing order revenue across categories.
=============================================================================

WITH category_metrics AS (
  SELECT
    p.category,
    COUNT(DISTINCT oi.order_id) AS orders,
    SUM(oi.sale_price) AS total_revenue,
    ROUND(SUM(oi.sale_price) / COUNT(DISTINCT oi.order_id), 2) AS revenue_per_order
  FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
  JOIN `bigquery-public-data.thelook_ecommerce.products` p
    ON oi.product_id = p.id
  WHERE oi.status = "Complete"
  GROUP BY p.category
)

SELECT
  category,
  orders,
  ROUND(total_revenue,2),
  revenue_per_order
FROM category_metrics
ORDER BY revenue_per_order DESC;
