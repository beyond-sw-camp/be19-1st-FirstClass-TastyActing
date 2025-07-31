-- 리뷰 및 댓글 삭제(신고5회 이상 받은)
SELECT * FROM report;
SELECT * from actor_review;
SELECT * from movie_review;
SELECT * FROM comment;


-- 영화 리뷰 삭제

DELETE
  FROM movie_review
 WHERE report_count >= 5;

-- 배우 리뷰 삭제
DELETE
  FROM actor_review
 WHERE report_count >= 5;
 
-- 댓글 리뷰 삭제
DELETE
  FROM comment
 WHERE report_count >= 5;  




