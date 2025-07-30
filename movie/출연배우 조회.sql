-- 영화 출연배우 조회
DELIMITER //

CREATE OR REPLACE PROCEDURE searchCasts(
	IN title VARCHAR(100)
)
BEGIN
	SELECT 
	       b.name AS '출연 배우'
	  FROM movie_actors a
	  JOIN actor b ON a.actor_code = b.code
	  JOIN movie c ON a.movie_code = c.code
	 WHERE c.name = title
	 ORDER BY c.name;	
END // 

DELIMITER ;

CALL viewCasts('퍼스트클래스'); 


