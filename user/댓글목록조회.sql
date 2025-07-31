 SELECT 
       a.code
     , a.content AS 댓글내용
     , d.name AS 작성자
     , a.date AS 작성날짜, 
  
    IF(a.movie_review_code IS NOT NULL, b.content, c.content) AS 원글내용,    

    IF(a.movie_review_code IS NOT NULL, '영화 리뷰', '배우 리뷰') AS 작성위치

  FROM comment a
  JOIN movie_review b ON a.movie_review_code = b.code
  JOIN actor_review c ON a.actor_review_code = c.code
  JOIN user d ON a.user_code = d.code
 WHERE a.user_code = 1;