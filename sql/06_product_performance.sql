=============================================================================
-- Business Question:
-- How concentrated is revenue across products and what share of products 
-- drives the majority of revenue?

-- Dataset:
-- thelook_ecommerce

-- Description:
-- This query calculates revenue per product and ranks products by revenue.
-- It then computes the percentage of products and cumulative revenue share 
-- to analyze revenue concentration using the Pareto principle.

-- Metrics:
-- 1. Revenue per product
-- 2. Product rank (by revenue)
-- 3. % of total products
-- 4. Cumulative % of total revenue

-- Why it matters:
-- This analysis helps determine whether a small subset of products drives 
-- most of the revenue, supporting decisions related to product focus, 
-- assortment optimization, and inventory management.

-- Note:
-- Only completed orders are included to ensure accurate revenue calculation.
=============================================================================

WITH product_revenue AS (
  SELECT
    product_id,
    SUM(sale_price) AS revenue
  FROM `bigquery-public-data.thelook_ecommerce.order_items`
  WHERE status = "Complete"
  GROUP BY product_id
),

ranked_products AS (
  SELECT
    product_id,
    revenue,
    ROW_NUMBER() OVER (ORDER BY revenue DESC) AS product_rank,
    COUNT(*) OVER () AS total_products,
    SUM(revenue) OVER () AS total_revenue,
    SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue
  FROM product_revenue
),

final AS (
  SELECT
    product_id,
    revenue,
    product_rank,
    ROUND(product_rank * 100.0 / total_products, 2) AS product_pct,
    ROUND(cumulative_revenue * 100.0 / total_revenue, 2) AS cumulative_revenue_pct
  FROM ranked_products
)

SELECT *
FROM final
WHERE product_pct >= 20
ORDER BY product_rank;
