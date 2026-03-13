 
SELECT 
  c.campaign_type,
  SUM(m.revenue) AS total_revenue,
  SUM(m.clicks) AS total_clicks,
  SUM(m.conversions) AS total_conversions
FROM campaigns c
JOIN campaign_metrics m ON c.campaign_id = m.campaign_id
GROUP BY c.campaign_type
ORDER BY total_revenue DESC;