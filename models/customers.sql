-- models/customers.sql
SELECT
    c_custkey,
    c_name,
    c_address,
    c_nationkey
FROM {{ source('tpch', 'customer') }}