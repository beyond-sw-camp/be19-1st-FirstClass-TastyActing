-- 영화 리뷰의 댓글 조회
DELIMITER //

CREATE OR REPLACE PROCEDURE searchCommentByReview(
	IN movie_name VARCHAR(100)
)
BEGIN
	SELECT
		   a.content AS '내용'
		 , c.name AS '작성자'
		 , a.date AS '작성날짜'
	  FROM comment a
	  JOIN movie_review b ON a.movie_review_code = b.code
	  JOIN user c ON a.user_code = c.code
	  JOIN movie d ON b.movie_code = d.code
	 WHERE d.name = movie_name;
END //

DELIMITER ;

CALL searchCommentByReview(4);