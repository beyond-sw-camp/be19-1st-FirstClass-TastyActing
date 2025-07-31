-- 영화 리뷰에 대한 댓글 삭제
DELIMITER //

CREATE OR REPLACE PROCEDURE deleteComment (
    IN comment_code INTEGER,
)
BEGIN
    DELETE comment 
    WHERE code = comment_code;
END //

DELIMITER ;

CALL deleteComment(1);
