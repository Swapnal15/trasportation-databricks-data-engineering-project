CREATE OR REPLACE VIEW cab_transportation.gold.fact_trips
AS (
SELECT 
t.id,
t.business_date,
t.city_id,
c.city_name,
t.passenger_category,
t.distance_kms,
t.sales_amt,
t.passenger_rating,
t.driver_rating,
ca.month,
ca.day_of_month,
ca.day_of_week,
ca.month_name,
ca.month_year,
ca.quarter,
ca.quarter_year,
ca.week_of_year,
ca.is_weekday,
ca.is_weekend,
ca.is_holiday as national_holiday
FROM 
cab_transportation.silver.trips t
JOIN cab_transportation.silver.city c ON t.city_id = c.city_id
JOIN cab_transportation.silver.calendar ca ON t.business_date = ca.date
);