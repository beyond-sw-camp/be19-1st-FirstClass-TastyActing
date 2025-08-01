-- 배우 리뷰 댓글 삭제
DELIMITER //

CREATE OR REPLACE PROCEDURE deleteComment(
    IN in_code INTEGER,
    IN in_user_code INTEGER
)
BEGIN
    UPDATE comment
    SET is_deleted = TRUE  
    WHERE code = in_code AND user_code = in_user_code; 
END //

DELIMITER ;

CALL deleteComment(22, 1);

SELECT * FROM comment;
