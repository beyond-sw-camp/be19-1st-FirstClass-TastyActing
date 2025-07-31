-- 배우 출연 영화 조회
SELECT
    a.code  AS '장르코드',
    a.name  AS '장르명',
    b.code  AS '영화코드',
    b.name  AS '영화명',
    b.release_date AS '개봉일자',
    b.rating AS '상영등급',
    b.score AS '평점'
  FROM movie_actors c
  JOIN movie b  ON b.code = c.movie_code
  JOIN genre a  ON a.code = b.genre_code
 WHERE c.actor_code = 1         -- 배우 선택
   AND a.code = 1                 -- 장르 선택 시
-- AND b.is_released = 1          -- 출시된 영화만 보여줄지 선택
 ORDER BY a.name, b.release_date DESC, b.name;
 