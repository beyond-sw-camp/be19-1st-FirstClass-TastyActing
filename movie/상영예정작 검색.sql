-- 상영예정작 검색 (상영예정영화만 단순 검색 기능)
-- 제목을 통한 상영예정작 검색
-- 개봉일 or 개봉구분으로 판단 가능 (개봉구분이 0이면 미개봉(상영예정작), 1이면 개봉)
delimiter //

CREATE OR REPLACE PROCEDURE searchUpcomingMovie(
    IN p_title VARCHAR(255)
)
BEGIN
    SELECT 
           a.name AS '상영예정 영화명'
         , a.release_date AS '개봉일'
         , a.rating AS '관람등급'
         , b.name AS '장르'
      FROM movie AS a
      JOIN genre AS b ON a.genre_code = b.code
     WHERE a.is_released = 0
       AND a.name LIKE CONCAT('%', p_title, '%');
END //

delimiter ;

CALL searchUpcomingMovie('기생충');
