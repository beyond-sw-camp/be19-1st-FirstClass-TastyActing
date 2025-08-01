-- 리뷰 및 댓글 삭제(신고5회 이상 받은)

delimiter //
CREATE OR REPLACE TRIGGER trg_delete_movie_review
AFTER UPDATE ON movie_review
FOR EACH ROW
BEGIN
    IF NEW.report_count >= 5 AND 
       EXISTS (
           SELECT 1
             FROM report
            WHERE category_code = 1
              AND movie_review_code = NEW.code
              AND is_processed = 0
       ) THEN
        DELETE FROM movie_review
        WHERE code = NEW.code;
    END IF;
END //

delimiter ;

UPDATE movie_review SET report_count = 5 WHERE CODE = 2 ;   

-- ------------------------------------------------------------
SELECT * FROM movie_review;
SELECT * FROM report;
SELECT * FROM category;


