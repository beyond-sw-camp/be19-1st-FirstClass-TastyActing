-- 영화 평점 계산
delimiter //

CREATE OR REPLACE TRIGGER updateMovieScore
	AFTER INSERT
	ON movie_review
	FOR EACH ROW
BEGIN
	UPDATE movie
	   SET score = (SELECT 
	   					   ROUND(AVG(score),1) 
	   				  FROM movie_review 
	   				 WHERE movie_code = NEW.movie_code
       			    )	
	 WHERE code = NEW.movie_code;
END //

delimiter ;

