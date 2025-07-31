-- 배우정보등록

delimiter //
CREATE OR REPLACE PROCEDURE insertActor(
       IN p_name VARCHAR(50)
     , IN p_information VARCHAR(255)
     , IN p_is_foreigner BOOLEAN
     , IN p_filename VARCHAR(255)
     , IN p_re_name VARCHAR(255)
     , IN p_path VARCHAR(255)
     , IN p_date DATETIME
)
BEGIN
   INSERT 
     INTO actor
   (
          name
        , information
        , is_foreigner
        , filename
        , re_name
        , name
        , DATE
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
END //
delimiter ;

CALL insertActor('박정민', '아차차 우원박', 0, 'picture6.jpg', 'rename_picture6.jpg', '/uploads/actors/', NULL);

