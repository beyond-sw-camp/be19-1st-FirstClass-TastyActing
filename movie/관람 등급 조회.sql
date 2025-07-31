-- 영화의 관람 등급 조회
SELECT 
	   rating
  FROM movie 
 WHERE name = '기생충';

-- 관람 등급별 영화 조회
SELECT 
	   a.name AS '영화제목'
	 , a.score AS '평점'
	 , b.name AS '장르'
  FROM movie a
  JOIN genre b ON a.genre_code = b.code
 WHERE rating = '15세';