-- 감독 삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteDirector(
     IN d_code INTEGER,
     IN d_name VARCHAR(50)
)
BEGIN
   DELETE
     FROM director
    WHERE code = d_code
	    OR name = d_name;
	    
	SELECT 
	       code AS '감독코드'  
        , name AS '감독이름' 
        , filename AS '파일명'
        , re_name AS '재설정 파일명'
        , path AS '경로'
        , DATE AS '업로드시간'
	  FROM director;       
END //
delimiter ;

CALL deleteActor(null, 'eman');