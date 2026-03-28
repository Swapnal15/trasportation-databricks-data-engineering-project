CREATE OR REPLACE VIEW cab_transportation.gold.fact_trips_lucknow
AS (
SELECT *
FROM cab_transportation.gold.fact_trips
WHERE city_id = 'UP01'
);