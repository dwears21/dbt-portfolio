SELECT
    concat(order_id,product_id) as id,
    count(*) as cnt 
FROM {{ ref('stg_nw_order_details') }}
GROUP BY 
     concat(order_id,product_id)
Having cnt > 1 