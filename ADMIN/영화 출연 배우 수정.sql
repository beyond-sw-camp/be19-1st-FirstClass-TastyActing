-- 영화 출연 배우 수정
UPDATE movie_actors 
   SET actor_code = 42
 WHERE movie_code = 10 AND actor_code = 30;