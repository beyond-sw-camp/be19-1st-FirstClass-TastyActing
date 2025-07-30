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

-- 감독별 필모그래피 조회
SELECT 
  b.name AS 감독명,
  GROUP_CONCAT(a.name SEPARATOR ', ') AS '필모그래피'
FROM movie a
JOIN director b ON a.director_code = b.code
GROUP BY b.name;
