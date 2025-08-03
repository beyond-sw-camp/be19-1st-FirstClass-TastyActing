-- 영화별 리뷰 조회
DELIMITER //

CREATE OR REPLACE PROCEDURE searchReviewByMovie(
	IN code INTEGER
)
BEGIN
	SELECT 
		   c.name AS '작성자'
		 , a.score AS '평점'
	 	 , a.content AS '내용'
	 	 , a.date AS '작성일'
	 	 , a.like_count AS '좋아요 개수'
	  FROM movie_review a
	  JOIN user c ON a.user_code = c.code
	 WHERE a.is_deleted = FALSE AND a.movie_code = code;
END //

DELIMITER ;

CALL searchReviewByMovie(15);




