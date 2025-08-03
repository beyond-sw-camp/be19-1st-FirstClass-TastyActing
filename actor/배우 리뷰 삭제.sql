-- 배우 리뷰 삭제
UPDATE actor_review
   SET is_deleted = TRUE
 WHERE user_code = 1
   AND movie_code = 15
   AND actor_code = 28
   AND EXISTS ( SELECT 1
			      FROM actor_review
			      WHERE user_code = 1
			        AND movie_code = 15
			        AND actor_code = 28
			  );