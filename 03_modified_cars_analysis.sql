SELECT
make,
model,
COUNT (*) AS total_cars,
SUM(CASE WHEN condition = 'modified' THEN 1 ELSE 0 END) AS modified_cars,
ROUND ((SUM(CASE WHEN condition = 'modified' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 1) AS percentage_modified
FROM `jdm_market_data.clean_listings`
GROUP BY make, model
ORDER BY percentage_modified DESC
