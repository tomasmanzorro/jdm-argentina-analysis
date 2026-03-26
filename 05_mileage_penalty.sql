SELECT
   CASE
     WHEN mileage < 80000 THEN 'low_mileage (<80k)'
     WHEN mileage BETWEEN 80000 AND 120000 THEN 'average_mileage (80k - 120k)'
     ELSE 'high_mileage (>120k)'
   END AS mileage_tier,
  COUNT (*) AS total_cars,
  ROUND(AVG(price_in_usd), 0) AS avg_price_usd
  FROM `jdm_market_data.clean_listings`
