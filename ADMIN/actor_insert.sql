-- 배우 등록

delimiter //
CREATE OR REPLACE PROCEDURE insertActor(
    IN p_code INTEGER,
	 IN p_name VARCHAR(50),
    IN p_information VARCHAR(255),
    IN p_is_foreigner BOOLEAN,
    IN p_filename VARCHAR(255),
    IN p_re_name VARCHAR(255),
    IN p_path VARCHAR(255),
    IN p_date DATETIME
)
BEGIN
    INSERT 
	   INTO actor
	 (
           code
		   , name
			, information
		   , is_foreigner
			, filename
			, re_name
			, path
			, date
    )
    VALUES 
	 (
           p_name
		   , p_information
			, p_is_foreigner
			, p_filename
			, p_re_name
			, p_path
			, p_date
    );
    
    SELECT
	        code AS '배우코드'
			, name AS '배우이름'
			, information AS '배우정보'
			, is_foreigner AS '외국인여부'
			, filename AS '파일명'
			, re_name AS '재설정 파일명'
			, path AS '경로'
			, DATE AS '업로드시간'
	   FROM actor;

END //
delimiter ;

CALL insertActor(NULL,'name', 'information', 0, 'picture6.jpg', 're_name', 'path', NULL);


