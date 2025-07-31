-- 영화정보수정

delimiter //
CREATE OR REPLACE PROCEDURE updateMovie(
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
   REPLACE
      INTO movie 
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

CALL updateMovie('머니볼', 2011-11-17, 0, '12세', 1,'moneyball.jpg', 'moneyball_2011.jpg', '/uploads/movies/', NULL, 6, 3);