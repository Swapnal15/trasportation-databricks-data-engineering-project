CREATE OR REPLACE VIEW cab_transportation.gold.fact_trips_kochi
AS (
SELECT *
FROM cab_transportation.gold.fact_trips
WHERE city_id = 'KL01'
);