WITH orders as
(
    SELECT * FROM{{ref("stg_orders")}}
),
customers as 
(
    SELECT * FROM{{ref("stg_customers")}}
),

final as 
(
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        COUNT(o.order_id) as number_of_orders,
        MIN(o.order_date) as first_order_date,
        MAX(o.order_date) as most_recent_order_date
    FROM customers c  
    LEFT JOIN orders o  ON o.customer_id = c.customer_id
    GROUP BY 
        c.customer_id,
        c.first_name,
        c.last_name
)

SELECT
*
FROM final