With source as (
    SELECT
        *
    FROM {{ref('employees')}}
),

renamed as(
SELECT
    employeeID as  employee_id,
    employeeName as  employee_name,
    title,
    city,
    reportsTo as reports_to 
FROM source
) 

SELECT * FROM renamed