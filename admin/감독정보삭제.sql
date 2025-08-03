-- 감독정보삭제
UPDATE director
   SET is_deleted = true
 WHERE code = 3 AND name = '이병헌';      

