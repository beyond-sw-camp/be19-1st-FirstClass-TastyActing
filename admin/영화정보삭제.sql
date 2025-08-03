-- 영화정보삭제
UPDATE movie
   SET is_deleted = TRUE
 WHERE code = 1;   