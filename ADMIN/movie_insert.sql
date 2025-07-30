-- 영화 등록
SELECT * FROM movie;

delimiter //
CREATE OR REPLACE PROCEDURE insertMovie(
       IN m_code INTEGER
     , IN m_name VARCHAR(50)
     , IN m_release_date DATE
     , IN m_score DOUBLE
     , IN m_rating VARCHAR(50)
     , IN m_is_released BOOLEAN
     , IN m_filename VARCHAR(255)
     , IN m_re_name VARCHAR(255)
     , IN m_path VARCHAR(255)
     , IN m_date DATETIME
     , IN m_director_code INTEGER
     , IN m_genre_code INTEGER
)
BEGIN
   INSERT 
	  INTO movie
	(
          code
		  , name
	     , release_date
		  , score
		  , rating
		  , is_released
		  , filename
		  , re_name
		  , path
		  , date
		  , director_code
		  , genre_code
   )
   VALUES 
	(
          m_code
		  , m_name
		  , m_release_date
		  , m_score
		  , m_rating
		  , m_is_released
	  	  , m_filename
		  , m_re_name
		  , m_path
		  , m_date
		  , m_director_code
		  , m_genre_code
    );
    
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

CALL insertMovie(16,'F1:더 무비', 2025-06-25, 0, '12세', 1, 'f1themovie.jpg', 'f1themovie_2025', '/uploads/moives/', NULL, 7, 1);
