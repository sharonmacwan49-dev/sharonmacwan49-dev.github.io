Practice query using fictional data
WITH appointments AS (
    SELECT 1 AS appointment_id,
           'Phoenix' AS clinic,
           'Completed' AS status
    UNION ALL
    SELECT 2, 'Phoenix', 'No-show'
    UNION ALL
    SELECT 3, 'Mesa', 'Completed'
)
SELECT
    clinic,
    COUNT(*) AS completed_visits
FROM appointments
WHERE status = 'Completed'
GROUP BY clinic
ORDER BY clinic;
