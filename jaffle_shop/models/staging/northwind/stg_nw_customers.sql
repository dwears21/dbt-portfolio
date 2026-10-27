with source as (
        SELECT 
            *
        FROM{{ ref('customers') }}
),

renamed as (
        SELECT
            customerID as customer_id,
            companyName as company_name,
            contactName as contact_name,
            contactTitle as contact_title,
            address,
            city,
            region,
            postalcode as postal_code,
            country,
            phone,
            fax
        FROM source
)

SELECT * FROM renamed
