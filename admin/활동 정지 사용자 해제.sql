-- 활동 정지 사용자 해제(처리일자(CURDATE()사용함)로부터 30일 이후 활동 정지된 사용자 해제)
-- 상태가 warning이고 정지해제일은 null값이 아니고 현재날짜가 정지해제일보다 크면 상태를 normal로 업데이트
UPDATE user
   SET status = 'normal'
     , expires_at = NULL
 WHERE status = 'warning'
   AND expires_at IS NOT NULL
   AND CURDATE() > expires_at;