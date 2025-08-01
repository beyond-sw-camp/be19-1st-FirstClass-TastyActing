-- 사용자가 영화리뷰에 작성한 모든 댓글 조회
-- 사용자가 영화리뷰에 작성한 모든 댓글 조회
SELECT 
    a.code AS 댓글코드,
    a.content AS 댓글내용,
    b.name AS 작성자,
    a.date AS 작성날짜,
    c.content AS 원글내용,
    '영화 리뷰' AS 작성위치
FROM comment a
JOIN user b ON a.user_code = b.code
JOIN movie_review c ON a.movie_review_code = c.code
WHERE a.user_code = 3
AND a.movie_review_code IS NOT NULL;


-- 사용자가 배우리뷰에 작성한 모든 댓글 조회
SELECT 
    a.code AS 댓글코드,
    a.content AS 댓글내용,
    b.name AS 작성자,
    a.date AS 작성날짜,
    c.content AS 원글내용,
    '배우 리뷰' AS 작성위치
FROM comment a
JOIN user b ON a.user_code = b.code
JOIN actor_review c ON a.actor_review_code = c.code
WHERE a.user_code = 1
AND a.actor_review_code IS NOT NULL;
