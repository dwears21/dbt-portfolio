with source as
(
SELECT *
FROM {{ ref('orders') }}
),

renamed as 
(
SELECT
    orderID as order_id,
    customerID as customer_id,
    employeeID as employee_id,
    orderDate as order_date,
    requiredDate as required_date,
    shippedDate as shipped_date,
    shipperID as shipper_id,
    freight
FROM source
)

SELECT * FROM renamed 