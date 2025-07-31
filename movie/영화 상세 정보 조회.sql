-- 영화 상세 정보 조회
DELIMITER //

CREATE OR REPLACE PROCEDURE searchMovieDetails(
 	IN title VARCHAR(100)
)
BEGIN
	SELECT 
	   a.name AS '영화제목'
	 , c.name AS '장르'
	 , d.name AS '감독명'
	 , score AS '평점'
	 , GROUP_CONCAT(e.name SEPARATOR ', ') AS '출연배우'
	 , rating AS '관람등급'
  FROM movie a
  JOIN movie_actors b ON a.code = b.movie_code
  JOIN genre c ON a.genre_code = c.code
  JOIN director d ON a.director_code = d.code
  JOIN actor e ON b.actor_code = e.code
 WHERE a.name = title
GROUP BY a.code;
END //

DELIMITER ;

CALL searchMovieDetails('퍼스트클래스'); 

