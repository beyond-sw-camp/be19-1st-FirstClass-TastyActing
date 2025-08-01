-- 배우 리뷰 작성
INSERT INTO actor_review (
    score AS '평점',    
    content AS '리뷰내용',    
    movie_code AS '영화코드',  
    actor_code AS '배우코드', 
    user_code AS '작성자코드')   
SELECT  4.5,'연기가 정말 인상 깊었어요!',2,2,3
 WHERE NOT EXISTS (SELECT 1 
                     FROM actor_review
                    WHERE user_code = 3 
                      AND movie_code = 7 
                      AND actor_code = 4
                  );	