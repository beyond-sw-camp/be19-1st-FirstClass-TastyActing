-- 영화 정보 조회
SELECT
       NAME AS '영화명'
     , release_date AS '개봉일'
     , score AS '평점'
     , rating AS '관람등급'
  FROM movie
 WHERE is_deleted = FALSE;