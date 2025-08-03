-- 영화정보수정

   REPLACE
      INTO movie 
    VALUES
    ( 16
    , '머니볼'
    , '2011-11-17'
    , 0
    , '12세'
    , 1
    , 'moneyball.jpg'
    , 'moneyball_2011.jpg'
    , '/uploads/movies/'
    , NULL
    , 6
    , 3);
   
-- 영화의 이름을 수정하는 경우
UPDATE movie
   SET name = '다이크나이트'
 WHERE code = 15; 

-- 영화의 관람등급을 수정하는 경우
UPDATE movie
   SET rating = '15세'
 WHERE code = 15; 