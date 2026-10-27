With source as 
(
    SELECT
        *
    FROM{{ ref('suppliers') }}
),

renamed as 
(
SELECT
    supplierID as supplier_id,
    companyName as company_name,
    contactName as contact_name,
    contactTitle as contact_title,
    address,
    city,
    region,
    postalCode as postal_code,
    country,
    phone,
    fax,
    homePage as home_page
FROM source
)

SELECT * FROM renamed


