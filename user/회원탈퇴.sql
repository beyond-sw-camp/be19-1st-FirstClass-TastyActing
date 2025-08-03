-- 사용자 코드가 1인 사용자 삭제 (Soft delete)
UPDATE user
   SET STATUS = 'deleted'
 WHERE code = 2;


select name, status from user where code = 2;