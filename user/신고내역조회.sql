-- 신고 내역 조회

DELIMITER //

CREATE PROCEDURE get_reports(
    IN reporter_id INT
)
BEGIN
    SELECT
        a.code 
		, b.name AS 신고자
		, a.reason AS 신고사유
		, a.date AS 신고일자
		, a.is_processed AS 처리여부,
    
	  CASE 
         WHEN a.movie_review_code IS NOT NULL THEN '영화 리뷰'
         WHEN a.actor_review_code IS NOT NULL THEN '배우 리뷰'
         WHEN a.comment_code IS NOT NULL THEN '댓글'
         ELSE '기타'
     END AS 신고대상종류,

     CASE
         WHEN a.movie_review_code IS NOT NULL THEN c.content
         WHEN a.actor_review_code IS NOT NULL THEN d.content
         WHEN a.comment_code IS NOT NULL THEN e.content
         ELSE '내용 없음'
     END AS 신고내용

     FROM report a
     JOIN user b ON a.reporter_code = b.code
     LEFT JOIN movie_review c ON a.movie_review_code = c.code
     LEFT JOIN actor_review d ON a.actor_review_code = d.code
     LEFT JOIN comment e ON a.comment_code = e.code
    WHERE a.reporter_code = reporter_id;
END //

DELIMITER ;

CALL get_reports(1);