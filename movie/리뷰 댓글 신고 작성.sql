 -- 영화 리뷰 신고 작성
 -- 하나의 리뷰에 신고는 한 번만 할 수 있다.
	
INSERT INTO report (
    reason, reporter_code, category_code,
    movie_review_code, actor_review_code, comment_code
)
SELECT
    '불쾌한 단어가 포함되어 있습니다', 1, 1, 1, NULL, NULL
WHERE NOT EXISTS (
    SELECT 1
    FROM report
    WHERE reporter_code = 1 AND category_code = 1 AND movie_review_code = 1
);

select * from report where reporter_code = 1 and movie_review_code = 1;