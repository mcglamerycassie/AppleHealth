/* Purpose: Calculate total monthly active calories burned using Apple Watch-only ActiveEnergyBurned records to reduce duplicate multi-device tracking */

SELECT
  FORMAT_DATE(
    '%Y-%m',
    DATE(SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S %z', startDate))
  ) AS month,

  ROUND(SUM(SAFE_CAST(value AS FLOAT64))) AS total_monthly_active_calories

FROM `project.dataset.table`

WHERE
  type = 'HKQuantityTypeIdentifierActiveEnergyBurned'
  AND sourceName LIKE '%Watch%'
  AND value IS NOT NULL
  AND DATE(SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S %z', startDate))
      BETWEEN DATE '2026-01-23' AND DATE '2026-04-23'

GROUP BY month

ORDER BY month;
