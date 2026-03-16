--===========================================================================
-- CUSTOMER BEHAVIOUR ANALYSIS
-- Dataset: bigquery-public-data.thelook_ecommerce
-- Purpose: Analyze how frequently customers place orders
-- Grain: 1 row = 1 customer
--===========================================================================

SELECT 
  user_id,
  COUNT(DISTINCT(order_id)) AS orders_per_customer
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY user_id
ORDER BY orders_per_customer DESC;


