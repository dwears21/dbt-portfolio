WITH source as 
(
SELECT *
FROM {{ ref('order_details') }}
),

renamed as 
(
SELECT 
    orderID as order_id,
    productID as product_id,
    unitPrice as unit_price,
    quantity,
    discount
FROM source 
)

SELECT * FROM renamed