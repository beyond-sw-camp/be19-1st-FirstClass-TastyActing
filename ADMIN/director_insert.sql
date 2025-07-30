-- 감독 등록
SELECT * FROM director;

delimiter //
CREATE OR REPLACE PROCEDURE insertDirector(
    IN d_code INTEGER,
	 IN d_name VARCHAR(50),
    IN d_filename VARCHAR(255),
    IN d_re_name VARCHAR(255),
    IN d_path VARCHAR(255),
    IN d_date DATETIME
)
BEGIN
    INSERT 
	   INTO director
	 (
           code
		   , name
			, filename
			, re_name
			, path
			, date
    )
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

CALL insertActor(NULL,'name', 'picture6.jpg', 're_name', 'path', NULL);
