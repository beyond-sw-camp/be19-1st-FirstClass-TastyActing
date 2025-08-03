-- 감독정보수정
REPLACE
   INTO director (name, information, filename, re_name, path)
 VALUES 
( 
  'Joseph Kosinski'
, '미국의 영화 감독, 영화 제작자이다. CG 기술과 컴퓨터 생성 이미지 전문가로 유명하다.'
,'josephkosinski.jpg'
, 'josephkosinski.jpg'
, '/uploads/directors/'
);

-- 감독 이름을 수정하는 경우
UPDATE director
   SET NAME = '변경이름'
 WHERE CODE = 13;
 
-- 감독 사진을 수정하는 경우
UPDATE director
   SET filename = '변경사진.jpg'
 WHERE CODE = 13;