-- 상영예정작 출연진 조회
-- 상영예정작에 대한 출연진 확인

SELECT 
       a.name AS '상영예정 영화명'
     , c.name AS '배우명'
     , a.release_date AS '개봉일'
     , a.rating AS '관람등급'
     , d.name AS '장르'
     , c.information AS '인물 소개'
  FROM movie AS a
  JOIN movie_actors AS b ON a.code = b.movie_code
  JOIN actor AS c ON b.actor_code = c.code
  JOIN genre AS d ON a.genre_code = d.code
 WHERE a.is_released = 0
ORDER BY a.name;