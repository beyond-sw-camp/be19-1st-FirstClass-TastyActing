delimiter //

CREATE OR REPLACE PROCEDURE updateComment (
    IN content VARCHAR(500),
    IN comment_code INTEGER 
)
BEGIN
	UPDATE comment
	   SET content = content
	 WHERE code = comment_code;
	 
END //

delimiter ;

CALL updateComment('이 배우의 연기는 바보같아요!', 22);