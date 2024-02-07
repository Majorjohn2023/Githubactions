WITH order_totals AS (
    SELECT
        l_orderkey,
        SUM(l_extendedprice * (1 - l_discount)) AS total_revenue
    FROM {{ ref('lineitem') }}
    GROUP BY l_orderkey
)
SELECT
    o.o_orderdate,
    SUM(ot.total_revenue) AS daily_revenue
FROM {{ ref('orders') }} o
JOIN order_totals ot ON o.o_orderkey = ot.l_orderkey
GROUP BY o.o_orderdate
ORDER BY o.o_orderdate