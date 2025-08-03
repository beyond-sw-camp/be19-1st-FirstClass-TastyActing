-- 검색된 영화의 모든 댓글 조회
SELECT
	   a.content AS '내용'
	 , c.name AS '작성자'
	 , a.date AS '작성날짜'
	 , b.code AS '리뷰 코드'
  FROM comment a
  JOIN movie_review b ON a.movie_review_code = b.code
  JOIN user c ON a.user_code = c.code
  JOIN movie d ON b.movie_code = d.code
 WHERE d.code = 10 AND a.is_deleted = FALSE;

