-- 영화정보등록

delimiter //
CREATE OR REPLACE PROCEDURE insertMovie(
       IN m_name VARCHAR(50)
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
		    name
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
		    m_name
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
END //
delimiter ;

CALL insertMovie('F1:더 무비', 2025-06-25, 0, '12세', 1, 'f1themovie.jpg', 'f1themovie_2025', '/uploads/moives/', NULL, 11, 2);
