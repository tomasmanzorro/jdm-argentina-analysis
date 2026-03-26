SELECT make, model,
COUNT (*) AS market_volume,
MIN(price_in_usd) AS lowest_price_usd,
MAX(price_in_usd) AS highest_price_usd,
MAX(price_in_usd) - MIN(price_in_usd) AS price_gap_usd
FROM `jdm_market_data.clean_listings`
GROUP BY make, model
ORDER BY price_gap_usd DESC;
