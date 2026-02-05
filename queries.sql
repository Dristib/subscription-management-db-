-- 1. List all active subscriptions
SELECT u.name, s.service_name, s.plan_type, s.status
FROM Users u
JOIN Subscriptions s ON u.id = s.user_id
WHERE s.status = 'active';

-- 2. Identify churn risk (inactive subscriptions)
SELECT u.name, s.service_name, s.status
FROM Users u
JOIN Subscriptions s ON u.id = s.user_id
WHERE s.status = 'inactive';

-- 3. Total usage per user
SELECT u.name, SUM(us.usage_metric) AS total_usage
FROM Users u
JOIN Usage us ON u.id = us.user_id
GROUP BY u.name
ORDER BY total_usage DESC;