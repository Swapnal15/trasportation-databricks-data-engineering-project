CREATE OR REPLACE VIEW cab_transportation.gold.fact_trips_indore
AS (
SELECT *
FROM cab_transportation.gold.fact_trips
WHERE city_id = 'MP01'
);