--===========================================================================
-- PARETO ANALYSIS (REVENUE CONCENTRATION)
-- Dataset: bigquery-public-data.thelook_ecommerce
-- Purpose: Analyze how revenue is distributed across customers
-- Grain: 1 row = 1 customer
--===========================================================================

-- SQL query for pareto analysis 

SELECT
  user_id,
  ROUND(SUM(sale_price),2) as revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY user_id
ORDER BY revenue DESC
