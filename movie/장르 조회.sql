-- 모든 영화의 장르 조회
SELECT 
	   a.name AS '영화제목'
	 , b.name AS '장르' 
	 , a.score AS '평점'
	 , a.rating AS '관람등급'
  FROM movie a
  JOIN genre b
 WHERE a.genre_code = b.code;


-- 특정 영화에 대한 장르 조회

  SELECT 
	     a.name AS '장르'
	FROM genre a
    JOIN movie b ON a.code = b.genre_code
   WHERE b.name = '인터스텔라';

