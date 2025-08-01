-- 감독정보삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteDirector(
       IN d_code INTEGER
     , IN d_name VARCHAR(50)
)
BEGIN
   DELETE
     FROM director
    WHERE code = d_code
      AND name = d_name;      
END //
delimiter ;

CALL deleteDirector(3, '이병헌');

