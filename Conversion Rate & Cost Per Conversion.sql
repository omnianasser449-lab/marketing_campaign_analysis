SELECT 
  c.campaign_type,
  ROUND(SUM(m.conversions) / NULLIF(SUM(m.clicks), 0) * 100, 2) AS conversion_rate,
  ROUND(SUM(m.spend) / NULLIF(SUM(m.conversions), 0), 2) AS cost_per_conversion
FROM campaigns c
JOIN campaign_metrics m ON c.campaign_id = m.campaign_id
GROUP BY c.campaign_type
ORDER BY conversion_rate DESC;