CREATE OR REPLACE VIEW cab_transportation.gold.fact_trips_chandigarh
AS (
SELECT *
FROM cab_transportation.gold.fact_trips
WHERE city_id = 'CH01'
);




