
WITH campaign_roi AS (
  SELECT c.campaign_type,
         SUM(m.revenue) AS total_revenue,
         SUM(m.spend) AS total_spend
  FROM campaigns c
  JOIN campaign_metrics m ON c.campaign_id = m.campaign_id
  GROUP BY c.campaign_type
)
SELECT 
  campaign_type,
  total_revenue,
  total_spend,
  ROUND((total_revenue - total_spend) / NULLIF(total_spend, 0) * 100, 2) AS roi_percentage
FROM campaign_roi
ORDER BY roi_percentage DESC;