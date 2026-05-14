/* Purpose: Calculate participant ROI using monthly gym membership cost. Update gym_fee for each participant. */

SELECT
  ROUND(AVG(daily_active_energy)) AS average_daily_active_calories,
  ROUND(AVG(daily_active_energy) * 30) AS estimated_monthly_active_calories,
  ROUND((AVG(daily_active_energy) * 30) / gym_fee) AS calories_per_dollar

FROM (
  SELECT
    DATE(SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S %z', startDate)) AS day,
    SUM(SAFE_CAST(value AS FLOAT64)) AS daily_active_energy

  FROM `project.dataset.table`

  WHERE
    type = 'HKQuantityTypeIdentifierActiveEnergyBurned'
    AND sourceName LIKE '%Watch%'
    AND value IS NOT NULL
    AND DATE(SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S %z', startDate))
        BETWEEN DATE '2026-01-23' AND DATE '2026-04-23'

  GROUP BY day
);
