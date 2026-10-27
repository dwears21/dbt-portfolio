With source as 
(
    SELECT
        *
    FROM{{ ref('categories') }}
),

renamed as 
(
SELECT
    categoryID as category_id,
    categoryName as category_name,
    description
FROM source
)

SELECT * FROM renamed
