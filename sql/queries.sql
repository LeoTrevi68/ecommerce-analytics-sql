-- =========================================
-- 1. Total Revenue
-- =========================================
SELECT SUM(price) AS total_revenue
FROM order_items;


-- =========================================
-- 2. Monthly Revenue (Growth Trend)
-- =========================================
SELECT 
    strftime('%Y-%m', o.order_purchase_timestamp) AS order_month,
    SUM(oi.price) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY order_month
ORDER BY order_month;


-- =========================================
-- 3. New vs Returning Customers (Retention)
-- =========================================
WITH first_purchase AS (
    SELECT 
        c.customer_unique_id,
        MIN(o.order_purchase_timestamp) AS first_purchase_date
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT 
    CASE 
        WHEN o.order_purchase_timestamp = fp.first_purchase_date THEN 'new'
        ELSE 'returning'
    END AS customer_type,
    COUNT(*) AS total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN first_purchase fp ON c.customer_unique_id = fp.customer_unique_id
GROUP BY customer_type;


-- =========================================
-- 4. Delivery Time vs Satisfaction (Operational Impact)
-- =========================================
SELECT 
    r.review_score,
    AVG(
        julianday(o.order_delivered_customer_date) - 
        julianday(o.order_purchase_timestamp)
    ) AS avg_delivery_days
FROM orders o
JOIN reviews r ON o.order_id = r.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY r.review_score
ORDER BY r.review_score;


-- =========================================
-- 5. Revenue by Category (Concentration)
-- =========================================
SELECT 
    p.product_category_name,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;