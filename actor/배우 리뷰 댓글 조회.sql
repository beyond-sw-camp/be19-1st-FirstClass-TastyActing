-- 배우 리뷰에 대한 댓글 조회
SELECT 
	   c.name AS '작성자'
 	 , a.content AS '내용'
 	 , a.date AS '작성일'
  FROM comment a
  JOIN actor_review b ON b.code = a.actor_review_code
  JOIN actor c ON c.code = b.actor_code
  JOIN user d ON a.user_code = d.code
 WHERE c.code = 10 AND a.is_deleted = FALSE;


