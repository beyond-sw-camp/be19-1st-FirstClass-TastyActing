-- 등급 부여
-- 좋아요 개수에 따라 50, 100, 500 / 브론즈, 실버, 골드
SELECT * FROM movie_review;
SELECT * FROM user;
SELECT * FROM level;

delimiter //
CREATE OR REPLACE PROCEDURE giveLevel (
)
BEGIN
DECLARE total_number INTEGER; 
     
	  set total_number = movie_review.`number` + actor_review.`number`

    case
        when total_number >= 5000 then
            SET level_code = 1;
        when total_number >= 100 then
            SET level_code = 2;
		  when total_number >= 50 then
            SET level_code = 3;
		  ELSE 
		      SET level_code = 4;	    
    END case;
END //
delimiter ;
