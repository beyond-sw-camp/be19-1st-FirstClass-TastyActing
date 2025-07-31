-- 장르 등록
SELECT * FROM genre;

delimiter //
CREATE OR REPLACE PROCEDURE insertGenre(
       IN g_code INTEGER
	  , IN g_name VARCHAR(50)
)
BEGIN
    INSERT
      INTO genre
    (
           code
			, NAME
    )
    values
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

CALL insertGenre(12, '스포츠');

