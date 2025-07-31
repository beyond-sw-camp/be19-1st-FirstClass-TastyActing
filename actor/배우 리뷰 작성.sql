-- 배우 리뷰 작성
INSERT INTO actor_review (
    score,       -- 평점
    content,     -- 리뷰내용	
    movie_code,  -- 영화코드 (리뷰 대상 영화)
    actor_code,  -- 배우코드
    user_code)   -- 작성자 회원코드
SELECT  4.5,'연기가 정말 인상 깊었어요!',2,2,3
WHERE NOT EXISTS (
    SELECT 1 FROM actor_review
    WHERE user_code = 3 AND movie_code = 7 AND actor_code = 4
);	