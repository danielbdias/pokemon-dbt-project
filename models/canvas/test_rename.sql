WITH stg_pokemon_database__games AS (
  /* Pokemon games data with basic cleaning and transformation applied, one row per game. */
  SELECT
    *
  FROM {{ ref('pokemon_database', 'stg_pokemon_database__games') }}
), formula AS (
  SELECT
    *,
    ID + 1 AS NEW_ID
  FROM stg_pokemon_database__games
), projection AS (
  SELECT
    NEW_ID AS ID,
    *
    EXCLUDE (ID, NEW_ID)
  FROM formula
), test_rename_sql AS (
  SELECT
    *
  FROM projection
)
SELECT
  *
FROM test_rename_sql