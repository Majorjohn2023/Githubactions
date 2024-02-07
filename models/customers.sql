-- models/customers.sql
SELECT
    c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal
FROM {{ source('tpch', 'customer') }}