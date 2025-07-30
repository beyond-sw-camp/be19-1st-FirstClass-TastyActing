-- 장르 삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteGenre(
       IN g_code INTEGER
	  , IN g_name VARCHAR(50)
)
BEGIN
    DELETE
      from genre
     WHERE code = g_code
        OR name = g_name;
    SELECT
           code AS '장르코드'
         , name AS '장르명'
      FROM genre;
END //
delimiter ;

CALL deleteGenre(2, '액션');

