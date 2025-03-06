-- We want to reward our users who have been around the longest

SELECT * FROM ig_clone.users
ORDER BY created_at DESC
LIMIT 5;
