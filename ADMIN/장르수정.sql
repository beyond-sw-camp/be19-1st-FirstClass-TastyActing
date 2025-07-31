-- 장르 수정

delimiter //
CREATE OR REPLACE PROCEDURE updateGenre(
       IN g_code INTEGER
     , IN g_name VARCHAR(50)
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

-- 장르 이름 수정
UPDATE genre
   SET name = '추리'
 WHERE code = 11;