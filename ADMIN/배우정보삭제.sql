-- 배우 삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteActor(
       IN a_code INTEGER
	  , IN a_name VARCHAR(50)
)
BEGIN
   DELETE
     FROM actor
    WHERE code = a_code
	    OR name = a_name;
	    
	SELECT 
	       code AS '배우코드'  
        , name AS '배우이름' 
        , information AS '배우정보'
        , is_foreigner AS '내/외국인여부'
        , filename AS '파일명'
        , re_name AS '재설정 파일명'
        , path AS '경로'
        , DATE AS '업로드시간'
	  FROM actor;       
END //
delimiter ;

CALL deleteActor(46, '박정민');