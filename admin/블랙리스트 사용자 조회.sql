-- 블랙리스트 사용자 조회
SELECT 
	   code AS '사용자번호'
	 , name AS '이름'
	 , id_number AS '주민번호'
	 , banned_at AS '영구정지일'
  FROM blacklist;
