-- 활동 정지 사용자 조회
SELECT 
	   id AS '아이디'
	 , name AS '이름'
	 , birth_date AS '생년월일'
	 , status AS '회원상태'
	 , report_count AS '신고횟수'
	 , level_code AS '등급'
  FROM user
 WHERE status = 'warning';