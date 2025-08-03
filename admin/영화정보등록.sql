-- 영화정보등록
INSERT 
  INTO movie
(
       name
     , release_date
     , score
     , rating
     , is_released
     , filename
     , re_name
     , path
     , director_code
     , genre_code
   )
VALUES 
(
  'F1:더 무비'
, '2025-06-25'
, 0
, '12세'
, TRUE
, 'f1themovie.jpg'
, 'f1themovie_2025'
, '/uploads/moives/'
, 11
, 2
);

SELECT * FROM movie ORDER BY code DESC;
