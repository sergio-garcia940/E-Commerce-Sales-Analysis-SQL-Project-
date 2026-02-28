WITH category_revenue AS (
  SELECT
    pr.product_category_name,
    SUM(oi.price + oi.freight_value) AS revenue
  FROM `ecommerce_analysis.olist_orders_dataset` o
  JOIN `ecommerce_analysis.olist_order_items_dataset` oi
    ON o.order_id = oi.order_id
  JOIN `ecommerce_analysis.olist_products_dataset` pr
    ON oi.product_id = pr.product_id
  WHERE o.order_status = 'delivered'
  GROUP BY pr.product_category_name
)

SELECT
  product_category_name,
  ROUND(revenue,2) AS total_revenue
FROM category_revenue
ORDER BY total_revenue DESC
LIMIT 10;
