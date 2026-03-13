
WITH campaign_performance AS (
  SELECT 
    c.campaign_id,
    c.campaign_name,
    c.campaign_type,
    m.revenue
  FROM campaigns c
  JOIN campaign_metrics m ON c.campaign_id = m.campaign_id
)
SELECT 
  campaign_id,
  campaign_name,
  campaign_type,
  revenue,
  ROW_NUMBER() OVER (ORDER BY revenue DESC) AS `rank`,
  CASE 
    WHEN revenue > 50000 THEN 'High'
    WHEN revenue > 20000 THEN 'Mid'
    ELSE 'Low'
  END AS performance_flag
FROM campaign_performance
ORDER BY `rank`;