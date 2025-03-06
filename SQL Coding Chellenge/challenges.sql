-- We want to reward our users who have been around the longest

SELECT * FROM ig_clone.users
ORDER BY created_at DESC
LIMIT 5;
-- 
/*What day of the week do most users register on?
We need to figure out when to schedule an ad campgain*/
SELECT
 date_format(created_at,'%W') AS 'day of the week', COUNT(*) AS 'total registration'
FROM users
GROUP BY 1
ORDER BY 2 DESC;

-- /*We want to target our inactive users with an email campaign.--

SELECT username
FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;
SELECT username
 FROM ig_clone.users;


-- We're running a new contest to see who can get the most likes on a single photo.--
WHO WON
 SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;