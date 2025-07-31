-- 장르 등록

delimiter //
CREATE OR REPLACE PROCEDURE insertGenre(
	    IN g_name VARCHAR(50)
)
BEGIN
    INSERT
      INTO genre
    (
			  NAME
    )
    values
    (
           g_name
    );  
END //
delimiter ;

CALL insertGenre('스포츠');

