-- 신고 리뷰 및 댓글 삭제
DELIMITER //

CREATE OR REPLACE PROCEDURE processReport(
	IN category_code INTEGER
  , IN report_code INTEGER 
  , IN post_code INTEGER
)
BEGIN
	
    IF category_code = 1 THEN
        UPDATE movie_review
           SET is_deleted = 1
		 WHERE code = post_code;
		 
    ELSEIF category_code = 2 THEN
        UPDATE actor_review
           SET is_deleted = 1
		 WHERE code = post_code;
    ELSEIF category_code = 3 THEN
        UPDATE comment
           SET is_deleted = 1
		 WHERE code = post_code;
    END IF;
    
	UPDATE report
  	   SET is_processed = 1
	 WHERE code = report_code;
END //

DELIMITER ;

call processReport(1,1,2);
