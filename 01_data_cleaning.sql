CREATE OR REPLACE VIEW `jdm-arg-market-analysis.jdm_market_data.clean_listings` AS
SELECT * EXCEPT (currency, price, kilometers),
CASE
WHEN currency = 'ARS' THEN ROUND(price / 1420, 0)
ELSE price
 END AS price_in_usd,
 ROUND (kilometers * 0.621371, 0) AS mileage
FROM `jdm_market_data.raw_listings`
