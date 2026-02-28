WITH monthly_revenue AS (
  SELECT
    FORMAT_DATE('%Y-%m', DATE(o.order_purchase_timestamp)) AS year_month,
    ROUND(SUM(p.payment_value),2) AS revenue
  FROM `ecommerce_analysis.olist_orders_dataset` o
  JOIN `ecommerce_analysis.olist_order_payments_dataset` p
  ON o.order_id = p.order_id
  GROUP BY year_month
)

SELECT
  year_month,
  revenue,
  LAG(revenue) OVER (ORDER BY year_month) AS previous_month_revenue,
  ROUND(
    (revenue - LAG(revenue) OVER (ORDER BY year_month)) 
    / LAG(revenue) OVER (ORDER BY year_month) * 100,
    2
  ) AS mom_growth_percentage
FROM monthly_revenue
ORDER BY year_month;
