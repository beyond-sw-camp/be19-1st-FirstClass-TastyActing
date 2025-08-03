-- 배우 장르별 평균 평점 조회
SELECT
       a.name AS '배우명',
       b.name AS '장르명',
       ROUND(AVG(c.score),1) AS '평균 평점'
  FROM
       actor_review c
  JOIN
       actor a ON c.actor_code = a.code
  JOIN
       movie d ON c.movie_code = d.code
  JOIN
       genre b ON d.genre_code = b.code
 WHERE a.code = 1 AND b.code = 1 
 GROUP BY a.name, b.name;
