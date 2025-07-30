-- 전체 영화 조회
SELECT 
	   name AS '영화제목'
	 , score AS '평점'
	 , rating AS '관람등급'
  FROM movie;


-- 특정 영화 검색
DELIMITER //

CREATE OR REPLACE PROCEDURE searchMovies(
	IN keyword VARCHAR(100))
BEGIN
  SELECT 
  	      name AS '영화제목'
  	    , score AS '평점'
  	    , rating AS '관람등급'
    FROM movie
   WHERE name LIKE CONCAT('%', keyword, '%');
END //

DELIMITER ;

CALL searchMovies('스'); 

