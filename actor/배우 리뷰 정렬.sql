-- 배우 리뷰 정렬
-- 날짜별
SELECT 
       *
  FROM actor_review
-- WHERE movie_code = 3 AND actor_code = 3
 ORDER BY date DESC; 

-- 평점별
SELECT 
       *
  FROM actor_review
 ORDER BY score DESC; 

-- 좋아요 수별
SELECT 
       *
  FROM actor_review
 ORDER BY number DESC; 
