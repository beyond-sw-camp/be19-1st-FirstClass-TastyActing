 -- 영화리뷰에 좋아요 누른 내역 조회
 SELECT
    l.code AS like_code,
    l.date AS liked_date,
    mr.code AS movie_review_code,
    mr.content AS movie_review_content,
    u.name AS user_name
FROM likes l
JOIN movie_review mr ON l.movie_review_code = mr.code
JOIN user u ON l.user_code = u.code
WHERE l.is_liked = TRUE AND l.user_code = 1;           -- l.user_code 입력으로 조회 가능


-- 배우 리뷰에 좋아요 누른 내역 조회
SELECT
    l.code AS like_code,
    l.date AS liked_date,
    ar.code AS actor_review_code,
    ar.content AS actor_review_content,
    u.name AS user_name
FROM likes l
JOIN actor_review ar ON l.actor_review_code = ar.code
JOIN user u ON l.user_code = u.code
WHERE l.is_liked = TRUE AND l.user_code = 1;           -- l.user_code 입력으로 조회 가능
