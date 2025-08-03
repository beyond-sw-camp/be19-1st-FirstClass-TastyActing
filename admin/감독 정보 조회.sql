-- 감독 정보 조회
SELECT 
       name AS '감독명'
     , information AS '소개'
  FROM director
 WHERE is_deleted = false;

