-- 배우 출연 장르별 리뷰 조회

SELECT
       a.code  AS actor_code,
       a.name  AS actor_name,
       g.code  AS genre_code,
       g.name  AS genre_name,
       ar.content AS review_content,
       COUNT(ar.code) AS review_count,
       AVG(ar.score)  AS avg_score
  FROM actor a
  JOIN movie_actors ma ON ma.actor_code = a.code
  JOIN movie m         ON m.code = ma.movie_code
  JOIN genre g         ON g.code = m.genre_code
  LEFT JOIN actor_review ar ON ar.movie_code = m.code
 WHERE a.code = 1  
 GROUP BY a.code, a.name, g.code, g.name
 ORDER BY g.name;