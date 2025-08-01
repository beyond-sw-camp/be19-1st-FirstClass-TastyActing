-- 신고 5회이상 누적된 리뷰나 댓글 조회

delimiter //

CREATE OR REPLACE PROCEDURE getReportedPosts(
    IN p_category_code INTEGER
)
BEGIN
   IF p_category_code = 1 THEN
      SELECT 
             a.reason AS '사유'
			  , b.content AS '원글내용'
           , c.name AS '작성자'
           , b.date AS '날짜'
        FROM report a
        JOIN movie_review b ON a.movie_review_code = b.code
        JOIN user c ON b.user_code = c.code
       WHERE a.category_code = 1
         AND b.report_count >= 5;
   
	   ELSEIF p_category_code = 2 THEN
      SELECT 
             a.reason AS '사유'
           , b.content AS '원글내용'
           , c.name AS '작성자'
           , b.date AS '날짜'
        FROM report a
        JOIN actor_review b ON a.actor_review_code = b.code
        JOIN user c ON b.user_code = c.code
       WHERE a.category_code = 2
         AND b.report_count >= 5;
   
      ELSEIF p_category_code = 3 THEN
      SELECT 
            a.reason AS '사유'
          , b.content AS '원글내용'
          , c.name AS '작성자'
          , b.date AS '날짜'
       FROM report a
       JOIN comment b ON a.comment_code = b.code
       JOIN user c ON b.user_code = c.code
      WHERE a.category_code = 3
        AND b.report_count >= 5;

   END IF;
END //

delimiter ;
