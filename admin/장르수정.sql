-- 장르 수정(존재하지 않으면 추가)
REPLACE
   INTO genre 
 (name)
 VALUES
('추리'); 


-- 장르 이름 수정
UPDATE genre
   SET name = '공포'
 WHERE code = 14;