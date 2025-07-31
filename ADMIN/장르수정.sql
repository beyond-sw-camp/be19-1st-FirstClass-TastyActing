-- 장르 수정

delimiter //
CREATE OR REPLACE PROCEDURE updateGenre(
       IN g_code INTEGER
	  , IN g_name VARCHAR(50),
)
BEGIN
   REPLACE
      INTO genre 
    VALUES
    (
           g_code
         , g_name
    ); 
END //
delimiter ;

CALL updateGenre(11, '추리');

