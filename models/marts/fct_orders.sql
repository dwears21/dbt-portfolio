WITH orders as 
(
SELECT * FROM {{ref("stg_orders")}}    
),

payments as 
(
SELECT * FROM {{ref("stg_payments")}}    
),

final as 
(
SELECT 
o.order_id,
p.payment_id,
p.payment_method,
p.amount,
o.customer_id,
o.order_date,
o.status
FROM orders o 
LEFT JOIN payments p ON o.order_id = p.order_id
)

SELECT
*
FROM final