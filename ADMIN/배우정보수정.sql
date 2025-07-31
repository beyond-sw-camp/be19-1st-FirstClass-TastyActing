-- 배우정보수정

delimiter //
CREATE OR REPLACE PROCEDURE updateActor(
       IN p_code INTEGER
	  , IN p_name VARCHAR(50)
	  , IN p_information VARCHAR(255)
	  , IN p_is_foreigner BOOLEAN
	  , IN p_filename VARCHAR(255)
	  , IN p_re_name VARCHAR(255)
	  , IN p_path VARCHAR(255)
	  , IN p_date DATETIME
)
BEGIN
   REPLACE
      INTO actor 
    VALUES
    (
           p_code
         , p_name
         , p_information
         , p_is_foreigner
         , p_filename
         , p_re_name
         , p_path
         , p_date
    );
END //
delimiter ;

CALL updateActor(4, '전지현', '태혜지의 지', 0, 'jeon_jihyun.jpg', 'jeon_jihyun.jpg', '/uploads/actors/', NULL);
