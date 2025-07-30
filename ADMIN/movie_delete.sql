-- 영화 삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteMovie(
       IN m_code INTEGER
     , IN m_name VARCHAR(50)
)
BEGIN
   DELETE
     FROM movie
    WHERE code = m_code
	    OR name = m_name;
	    
	SELECT
	       code AS '영화코드'
		  , name AS '영화이름'
		  , release_date AS '개봉일'
		  , score AS '평점'
		  , rating AS '관람등급'
		  , is_released AS '개봉여부'
		  , filename AS '파일명'
		  , re_name AS '재설정 파일명'
		  , path AS '경로'
		  , date AS '업로드시간'
		  , director_code AS '감독코드'
		  , genre_code AS '장르코드'
	  FROM movie;       
END //
delimiter ;

CALL deleteMovie(16, 'F1:더 무비');