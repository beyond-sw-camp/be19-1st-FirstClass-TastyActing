-- 사용자가 작성한 영화 리뷰 조회
DELIMITER //

CREATE OR REPLACE PROCEDURE searchReviewByUser(
	IN user_code INTEGER
)
BEGIN
	SELECT 
	   b.name AS '영화 제목'
	 , a.score AS '평점'
 	 , a.content AS '내용'
 	 , a.date AS '작성일'
 	 , a.number AS '좋아요 개수'
  FROM movie_review a
  JOIN movie b ON a.movie_code = b.code
 WHERE a.user_code = user_code;
END //

DELIMITER ;

CALL searchReviewByUser(4);


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
	 	 , a.number AS '좋아요 개수'
	  FROM movie_review a
	  JOIN movie b ON a.movie_code = b.code
	  JOIN user c ON a.user_code = c.code;
END //

DELIMITER ;

CALL searchReviewByMovie(15);




