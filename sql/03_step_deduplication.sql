/* Purpose: Identify duplicate step count by comparing step totals from Apple Health data sources (watch v iPhone) */

SELECT
  sourceName,
  COUNT(*) AS record_count,
  ROUND(SUM(SAFE_CAST(value AS FLOAT64))) AS total_steps
FROM `project.dataset.table`

WHERE
  type = 'HKQuantityTypeIdentifierStepCount'
  AND value IS NOT NULL

GROUP BY sourceName

ORDER BY total_steps DESC;
