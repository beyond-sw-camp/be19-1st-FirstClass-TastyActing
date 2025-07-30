-- 영화 감독 조회
DELIMITER //

CREATE OR REPLACE PROCEDURE searchDirector(
	IN title VARCHAR(100)
)
BEGIN
	SELECT 
	     a.name AS '감독명'
	FROM director a
	JOIN movie b ON a.code = b.director_code
	WHERE b.name = title;
END // 

DELIMITER ;

CALL searchDirector('기생충'); 