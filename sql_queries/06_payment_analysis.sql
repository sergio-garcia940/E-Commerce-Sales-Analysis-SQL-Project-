SELECT
  payment_type,
  ROUND(SUM(payment_value),2) AS total_revenue
FROM `ecommerce_analysis.olist_order_payments_dataset`
GROUP BY payment_type
ORDER BY total_revenue DESC;
