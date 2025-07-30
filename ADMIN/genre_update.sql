-- 장르 수정

delimiter //
CREATE OR REPLACE PROCEDURE updateGenre(
     IN g_code INTEGER,
	  IN g_name VARCHAR(50),
)
BEGIN
   REPLACE
      INTO genre 
    VALUES
    (
           g_code
         , g_name
    );
    SELECT
           code AS '장르코드'
         , name AS '장르명'
      FROM genre; 
END //
delimiter ;

CALL updateActor(47, 'eman');
