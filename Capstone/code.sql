 SELECT *
 FROM survey
 Limit 10;

SELECT question,
   COUNT(DISTINCT user_id)
FROM survey
GROUP BY question;

SELECT *
FROM quiz
LIMIT 5;

SELECT *
FROM home_try_on
Limit 5;

SELECT *
FROM purchase
Limit 5;

SELECT DISTINCT q.user_id,
   h.user_id IS NOT NULL AS 'is_home_try_on',
   h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz  as 'q'
LEFT JOIN home_try_on as 'h'
   ON q.user_id = h.user_id
LEFT JOIN purchase as 'p'
   ON p.user_id = q.user_id
LIMIT 10;