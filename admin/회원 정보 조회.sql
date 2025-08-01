-- 회원 정보 조회
SELECT 
       id AS 'ID'
     , pw AS 'Password'
     , name AS '회원명'
     , id_number AS '주민등록번호'
     , birth_date AS '생년월일'
     , status AS '회원상태'
     , expires_at AS '정지해제일'
  FROM user;