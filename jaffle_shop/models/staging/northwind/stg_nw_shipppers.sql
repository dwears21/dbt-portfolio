With source as (
    SELECT
    *
    FROM {{ ref('shippers') }}
),

renamed as 

(
SELECT
    shipperID as shipper_id,
    companyName as company_name,
    phone
FROM source 
)

SELECT * FROM renamed