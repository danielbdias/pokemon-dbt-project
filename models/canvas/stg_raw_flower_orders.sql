WITH raw_flower_orders_csv AS (
  SELECT
    *
  FROM {{ source('uploads', 'raw_flower_orders_csv') }}
), stg_raw_flower_orders_sql AS (
  SELECT
    *
  FROM raw_flower_orders_csv
)
SELECT
  *
FROM stg_raw_flower_orders_sql