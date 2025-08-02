-- 배우 리뷰 댓글 삭제
UPDATE comment
   SET is_deleted = TRUE  
 WHERE code = 3 AND user_code = 4; 
