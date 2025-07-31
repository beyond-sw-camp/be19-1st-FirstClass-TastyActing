-- 감독정보등록

delimiter //
CREATE OR REPLACE PROCEDURE insertDirector(
       IN d_name VARCHAR(50)
     , IN d_filename VARCHAR(255)
     , IN d_re_name VARCHAR(255)
     , IN d_path VARCHAR(255)
     , IN d_date DATETIME
)
BEGIN
   INSERT 
     INTO director
   (
          name
        , filename
		  , re_name
		  , path
		  , DATE
   )
   VALUES 
   (
          d_name
        , d_filename
		  , d_re_name
		  , d_path
		  , d_date
   );
END //
delimiter ;

CALL insertDirector('Martin Scorsese', 'martinscorsese.jpg', 'martinscorsese.jpg', '/uploads/directors', NULL);

