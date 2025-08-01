-- 배우 리뷰 정렬
-- 날짜별
SELECT 
       score AS '평점'
     , content AS '리뷰내용'
     , like_count AS '좋아요갯수'
     , DATE AS '작성일자'
     , movie_code AS '영화코드'
     , actor_code AS '배우코드'  
  FROM actor_review 
 WHERE movie_code = 3 AND actor_code = 4
 ORDER BY date DESC; 

-- 평점별
SELECT 
       score AS '평점'
     , content AS '리뷰내용'
     , like_count AS '좋아요갯수'
     , DATE AS '작성일자'
     , movie_code AS '영화코드'
     , actor_code AS '배우코드'  
  FROM actor_review 
 WHERE movie_code = 3 AND actor_code = 4
 ORDER BY score DESC; 

-- 좋아요 수별
SELECT 
       score AS '평점'
     , content AS '리뷰내용'
     , like_count AS '좋아요갯수'
     , DATE AS '작성일자'
     , movie_code AS '영화코드'
     , actor_code AS '배우코드'  
  FROM actor_review 
 WHERE movie_code = 3 AND actor_code = 4
 ORDER BY like_count DESC; 