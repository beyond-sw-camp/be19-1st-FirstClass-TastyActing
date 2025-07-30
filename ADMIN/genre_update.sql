-- 장르 수정
SELECT * FROM genre;

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
    SELECT
           code AS '장르코드'
         , name AS '장르명'
      FROM genre; 
END //
delimiter ;

CALL updateGenre(11, '추리');

