
-- 영화 리뷰 수정
UPDATE movie_review
   SET score = 5
     , content = '재관람할 가치가 있다.'
 WHERE user_code = 1 AND movie_code = 15;
