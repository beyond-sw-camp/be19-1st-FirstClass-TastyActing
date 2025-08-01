-- 신고 리뷰 및 댓글 삭제
DELIMITER //

CREATE OR REPLACE PROCEDURE processReport(
	IN category_code INTEGER
  , IN report_code INTEGER 
  , IN post_code INTEGER
)
BEGIN
	
    IF category_code = 1 THEN
        DELETE 
		  FROM movie_review 
		 WHERE code = post_code;
		 
    ELSEIF category_code = 2 THEN
        DELETE 
		  FROM actor_review 
		 WHERE code = post_code;
    ELSEIF category_code = 3 THEN
        DELETE 
		  FROM comment 
		 WHERE code = post_code;
    END IF;
    
	UPDATE report
  	   SET is_processed = 1
	 WHERE code = report_code;
END //

DELIMITER ;

call processReport(1,1,2);
