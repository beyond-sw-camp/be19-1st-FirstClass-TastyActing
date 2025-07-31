-- 배우정보삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteActor(
       IN a_code INTEGER
     , IN a_name VARCHAR(50)
)
BEGIN
   DELETE
     FROM actor
    WHERE code = a_code
      AND name = a_name;       
END //
delimiter ;

CALL deleteActor(5, '장혜진');

