With Sources as (
    SELECT 
        *
    FROM {{ref('raw_payments')}}
),

renamed as (
    SELECT 
        id as payment_id,
        order_id,
        payment_method,
        amount
    FROM Sources 
)

Select 
    *
FROM renamed