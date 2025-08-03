-- 영화 리뷰 삭제 
UPDATE movie_review
   SET is_deleted = TRUE
 WHERE user_code = 4
   AND movie_code = 5;
