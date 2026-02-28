WITH customer_revenue AS (
  SELECT
    c.customer_unique_id,
    SUM(oi.price + oi.freight_value) AS total_revenue
  FROM `ecommerce_analysis.olist_orders_dataset` o
  JOIN `ecommerce_analysis.olist_order_items_dataset` oi
    ON o.order_id = oi.order_id
  JOIN `ecommerce_analysis.olist_customers_dataset` c
    ON o.customer_id = c.customer_id
  WHERE o.order_status = 'delivered'
  GROUP BY c.customer_unique_id
)

SELECT
  customer_unique_id,
  ROUND(total_revenue,2) AS total_revenue
FROM customer_revenue
ORDER BY total_revenue DESC
LIMIT 10;
