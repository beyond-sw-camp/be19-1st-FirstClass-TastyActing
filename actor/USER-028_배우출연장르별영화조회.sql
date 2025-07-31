-- 배우 출연 장르별 영화 조회
SELECT
    g.code  AS genre_code,
    g.name  AS genre_name,
    m.code  AS movie_code,
    m.name  AS movie_name,
    m.release_date,
    m.rating,
    m.score
  FROM movie_actors ma
  JOIN movie m  ON m.code = ma.movie_code
  JOIN genre g  ON g.code = m.genre_code
 WHERE ma.actor_code = 41         -- 배우 선택
   AND g.code = 8                 -- 장르 선택
-- AND m.is_released = 1          -- 출시된 영화만 보여줄지 선택
 ORDER BY g.name, m.release_date DESC, m.name;
 