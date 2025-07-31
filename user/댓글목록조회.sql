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








-- 영화 리뷰 없이 배우 리뷰에만 연결된 댓글
INSERT INTO comment (
    content, report_count, user_code, actor_review_code, movie_review_code
) VALUES (
    '배우 연기 정말 인상 깊었어요!', 0, 1, 1, NULL
);
INSERT INTO comment (
    content, report_count, user_code, actor_review_code, movie_review_code
) VALUES 
('이 배우 진짜 연기력 안미쳤어요!', 0, 3, NULL, 3),
('감정선이 정말 섬세하게 표현됐네요.', 0, 3, NULL, 2),
('오랜만에 이렇게 몰입된 연기 본 듯.', 0, 3, NULL, 2);
SELECT * FROM user;
SELECT * FROM comment;
SELECT * FROM movie_review;
SELECT * FROM actor_review;

INSERT INTO comment (
    content, report_count, user_code, actor_review_code, movie_review_code
) VALUES 
('스토리 완전 짜임새 있었음.', 0, 1, 1, 2),
('감독 연출력에 놀랐어요.', 0, 1, 1, 3);