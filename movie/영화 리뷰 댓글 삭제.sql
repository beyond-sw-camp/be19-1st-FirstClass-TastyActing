-- 영화 리뷰에 대한 댓글 삭제
DELIMITER //

CREATE OR REPLACE PROCEDURE deleteComment (
    IN comment_code INTEGER
)
BEGIN
    UPDATE comment 
       SET is_deleted = TRUE
     WHERE code = comment_code;
END //

DELIMITER ;

CALL deleteComment(1);