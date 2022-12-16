SELECT SUM(score)
FROM hacker_news;
 
SELECT SUM(score), user
FROM hacker_news
GROUP BY user
HAVING SUM(score)> 200
ORDER BY 2 DESC;

SELECT (1.0 + 2.0 + 3.0) / 6.0

SELECT user, COUNT(*)
FROM hacker_news
WHERE url LIKE '%/watch?v=dQw4w9WgXcQ%'
GROUP BY USER
ORDER BY COUNT(*) DESC;

SELECT user, COUNT(*)
FROM hacker_news
WHERE url LIKE '%/watch?v=dQw4w9WgXcQ%'
GROUP BY 1
ORDER BY 2 DESC;

SELECT CASE
when url LIKE '%github.com%' THEN 'GitHub'
when url LIKE '%medium.com%' THEN 'Medium'
when url LIKE '%nytimes.com%' THEN 'New York Times'
ELSE 'Other'
END AS 'Source'
FROM hacker_news;

SELECT CASE
when url LIKE '%github.com%' THEN 'GitHub'
when url LIKE '%medium.com%' THEN 'Medium'
when url LIKE '%nytimes.com%' THEN 'New York Times'
ELSE 'Other'
END AS 'Source',
COUNT(*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp, strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp), AVG(score), COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 1;

SELECT strftime('%H', timestamp) AS 'Hour', ROUND(AVG(score), 1) AS 'Average Score', COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT null
GROUP BY 1
ORDER BY 1;


