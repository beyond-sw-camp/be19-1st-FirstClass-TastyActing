-- 배우정보수정(배우 정보 없을시 추가)
REPLACE
   INTO actor 
 (name, information, is_foreigner, filename, re_name, path)
 VALUES
 ('전지현', '태혜지의 지', FALSE, 'jeon_jihyun.jpg', 'jeon_jihyun.jpg', '/uploads/actors/');

-- 배우 이름을 수정하는 경우
UPDATE actor
   SET name = '신민아'
 WHERE code = 47;
 
-- 배우 사진을 수정하는 경우
UPDATE actor
   SET filename = 'sinmina.jpg'
 WHERE code = 47;
