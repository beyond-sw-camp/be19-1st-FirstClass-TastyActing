 -- 영화 리뷰
SELECT r.code, r.score, r.content, r.date, m.name AS movie_name
	FROM movie_review r
  JOIN movie m ON r.movie_code = m.code
 WHERE r.user_code = 1;

-- 배우 리뷰
SELECT r.code, r.score, r.content, r.date, a.name AS actor_name
  FROM actor_review r
  JOIN actor a ON r.actor_code = a.code
 WHERE r.user_code = 1; 