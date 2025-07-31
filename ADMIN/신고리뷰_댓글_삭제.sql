-- 리뷰 및 댓글 삭제(신고5회 이상 받은)

-- -- 영화 리뷰 신고 시 실행할 로직 (가상 코드)
-- 1단계: 먼저 report_count를 1 증가시킵니다.
UPDATE movie_review
   SET report_count = report_count + 1
 WHERE code = 1;

-- 2단계: 업데이트된 report_count 값을 다시 조회합니다.
SELECT report_count
  FROM movie_review
 WHERE code = 1;

-- 3단계: 조회한 report_count가 5 이상이면, 해당 리뷰를 삭제합니다.
-- (애플리케이션 코드에서 if 문으로 처리)
IF (report_count >= 5) THEN
    DELETE FROM movie_review
     WHERE code = 1;
END IF;

-- ---------------------------------------------
-- 배우 리뷰 신고 시 실행할 로직 (가상 코드)
-- 1단계: report_count를 1 증가시킵니다.
UPDATE actor_review
   SET report_count = report_count + 1
 WHERE CODE = 1;

-- 2단계: 업데이트된 report_count를 조회합니다.
SELECT report_count
  FROM actor_review
 WHERE CODE = 1;

-- 3단계: 조회한 report_count가 5 이상이면, 해당 리뷰를 삭제합니다.
-- (애플리케이션 코드에서 if 문으로 처리)
IF (report_count >= 5) THEN
    DELETE FROM actor_review
     WHERE CODE = 1;
END IF;

-- ------------------------------------------------------------
-- comment 신고 시 실행할 로직 (가상 코드)
-- 1단계: report_count를 1 증가시킵니다.
UPDATE comment
   SET report_count = report_count + 1
 WHERE code = 1;

-- 2단계: 업데이트된 report_count를 조회합니다.
SELECT report_count
  FROM comment
 WHERE CODE = 1;

-- 3단계: 조회한 report_count가 5 이상이면, 해당 댓글을 삭제합니다.
-- (애플리케이션 코드에서 if 문으로 처리)
IF (report_count >= 5) THEN
    DELETE FROM comment
     WHERE CODE = 1;
END IF;

  




