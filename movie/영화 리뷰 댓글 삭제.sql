-- 영화 리뷰에 대한 댓글 삭제
UPDATE comment 
   SET is_deleted = TRUE
 WHERE code = 1;