-- 좋아요 목록 조회

SELECT 
       a.code
     , b.name AS 사용자
     , IF(a.movie_review_code IS NOT NULL, c.content, d.content) AS 글내용
     , IF(a.movie_review_code IS NOT NULL, '영화 리뷰', '배우 리뷰') AS 글종류
     , a.date AS 좋아요한날짜
  FROM likes a
  JOIN user b ON a.user_code = b.code
  left JOIN movie_review c ON a.movie_review_code = c.code
  left JOIN actor_review d ON a.actor_review_code = d.code
 WHERE a.is_liked = TRUE AND a.user_code = 5;
 