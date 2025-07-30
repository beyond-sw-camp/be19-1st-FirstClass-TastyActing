-- 감독 수정

delimiter //
CREATE OR REPLACE PROCEDURE updateDirector(
     IN d_code INTEGER,
	  IN d_name VARCHAR(50), 
	  IN d_filename VARCHAR(255), 
	  IN d_re_name VARCHAR(255), 
	  IN d_path VARCHAR(255), 
	  IN d_date DATETIME
)
BEGIN
   REPLACE
      INTO director 
    VALUES
    (
           d_code
         , d_name
         , d_filename
         , d_re_name
         , d_path
         , d_date
    );
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

CALL updateActor(null, 'eman', 'gpj.6erutcip', NULL, NULL, NULL);