-- 배우 리뷰 수정
UPDATE actor_review
   SET score = 4.8,
       content = '연기가 너무 인상적이었고 감동적이었습니다.'
 WHERE user_code = 3 AND movie_code = 7 AND actor_code = 4;
    
