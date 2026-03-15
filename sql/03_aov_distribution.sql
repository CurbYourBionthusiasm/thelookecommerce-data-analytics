--=============================================================================
--AOV Distribution Analysis
--Dataset: bigquery-public-data.thelook_ecommerce
--Purpose: Understand the distribution of order values and identify 
--potential skewness or high-value outliers
--Grain = 1 row = 1 order
--=============================================================================

SELECT 
  order_id, 
  ROUND(SUM(sale_price),2) AS revenue_per_order, 
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY order_id;
