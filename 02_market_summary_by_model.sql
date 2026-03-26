SELECT
make, model,
COUNT(*) AS total_cars,
ROUND (AVG(price_in_usd), 0) AS avg_price_usd,
ROUND (AVG(mileage), 0) AS avg_mileage
FROM `jdm_market_data.clean_listings`
GROUP BY make, model
ORDER BY avg_price_usd
