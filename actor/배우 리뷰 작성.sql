-- 배우 리뷰 작성
INSERT INTO actor_review (
    score,    
    content,    
    movie_code,  
    actor_code, 
    user_code)   
SELECT  4.5,'연기가 정말 인상 깊었어요!',2,2,3
 WHERE NOT EXISTS (SELECT 1 
                     FROM actor_review
                    WHERE user_code = 3 
                      AND movie_code = 7 
                      AND actor_code = 2
                      AND is_deleted = FALSE
                  );	