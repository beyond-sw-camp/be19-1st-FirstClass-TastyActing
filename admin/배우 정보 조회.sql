-- 배우 정보 조회
SELECT 
       name AS '배우명'
     , information AS '소개'
  FROM actor
 WHERE is_deleted = FALSE;