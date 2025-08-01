-- 영화 출연배우 조회

SELECT 
       b.name AS '출연 배우'
  FROM movie_actors a
  JOIN actor b ON a.actor_code = b.code
  JOIN movie c ON a.movie_code = c.code
 WHERE c.name = '퍼스트클래스'
 ORDER BY c.name;	



