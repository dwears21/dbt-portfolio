WITH source as 
(
SELECT
    *
FROM {{ ref('stg_nw_order_details') }}
),

cte as
(
SELECT
    order_id,
    product_id,
    unit_price,
    quantity,
    discount,
    unit_price * quantity as gross_revenue
FROM source
)

SELECT * FROM cte