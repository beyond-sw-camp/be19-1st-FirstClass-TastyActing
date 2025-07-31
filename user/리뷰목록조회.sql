 -- 영화 리뷰
SELECT 
       a.code
	  , a.score AS 평점
	  , a.content AS 리뷰내용
	  , a.date AS 작성시간
	  , b.name AS 영화제목
	  , c.name AS 작성자
  FROM movie_review a
  JOIN movie b ON a.movie_code = b.code
  JOIN user c ON a.user_code = c.code
 WHERE a.user_code = 1;

-- 배우 리뷰
SELECT 
       a.code
	  , a.score AS 평점
	  , a.content AS 리뷰내용
	  , a.date AS 작성시간
	  , b.name AS 배우이름
	  , c.name AS 작성자
  FROM actor_review a
  JOIN actor b ON a.actor_code = b.code
  JOIN user c ON a.user_code = c.code
 WHERE a.user_code = 1; 