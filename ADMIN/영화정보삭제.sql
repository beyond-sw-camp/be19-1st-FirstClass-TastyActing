-- 영화정보삭제

delimiter //
CREATE OR REPLACE PROCEDURE deleteMovie(
       IN m_code INTEGER
     , IN m_name VARCHAR(50)
)
BEGIN
   DELETE
     FROM movie
    WHERE code = m_code
      AND name = m_name;     
END //
delimiter ;

CALL deleteMovie(16, 'F1:더 무비');

