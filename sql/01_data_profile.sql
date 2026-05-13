/* Purpose: Identify record type, data ranges, and source validation */
SELECT type, COUNT(*) AS record_count
FROM `project.dataset.table`
GROUP BY type
ORDER BY record_count DESC;
