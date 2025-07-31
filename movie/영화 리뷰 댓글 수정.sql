-- 영화 리뷰에 대해 작성한 댓글 수정
DELIMITER //

CREATE OR REPLACE PROCEDURE updateComment (
    IN content VARCHAR(500),
    IN comment_code INTEGER 
)
BEGIN
	UPDATE comment
	   SET content = content
	 WHERE code = comment_code;
	 
END //

DELIMITER ;

CALL updateComment('공감합니다!', 1);

