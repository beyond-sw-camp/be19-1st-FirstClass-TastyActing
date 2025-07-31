-- 등급 부여
-- 좋아요 개수에 따라 50, 100, 500 / 아이언(기본 등급), 브론즈, 실버, 골드
-- like_count를 계산하는 stored function
delimiter //

CREATE OR REPLACE FUNCTION total_like_count(
    IN t_code INTEGER
)
RETURNS INTEGER
DETERMINISTIC
BEGIN
   DECLARE total_likes INTEGER;

   SELECT
          IFNULL(SUM(mr.number), 0) +
          IFNULL(SUM(ar.number), 0)
     INTO total_likes
     FROM user u
     LEFT JOIN movie_review mr ON u.code = mr.user_code
     LEFT JOIN actor_review ar ON u.code = ar.user_code
    WHERE u.code = t_code;

   RETURN total_likes;
END //

delimiter ;

-- like_count와 level_code를 업데이트하는 procedure
delimiter //

CREATE OR REPLACE PROCEDURE user_like_level(
    IN u_code INTEGER
)
BEGIN
DECLARE total_likes INTEGER;
DECLARE new_level_code INTEGER DEFAULT 1;

    SET total_likes = total_like_count(u_code);

   case
        when total_likes >= 500 then
         SET new_level_code = 4;
        when total_likes >= 100 then
         SET new_level_code = 3;
        when total_likes >= 50 then
         SET new_level_code = 2;
        ELSE
         SET new_level_code = 1;	    
   END case;

   UPDATE user
      SET like_count = total_likes
        , level_code = new_level_code
    WHERE code = u_code;
END //

delimiter ;

-- movie_review와 actor_review테이블에서 좋아요가 바뀔 때마다 자동으로 반영되도록 트리거 작성.
delimiter //

CREATE OR REPLACE TRIGGER trg_after_movie_review_update
    AFTER UPDATE
    ON movie_review
    FOR EACH ROW
BEGIN
   CALL user_like_level(NEW.user_code);
END //

CREATE OR REPLACE TRIGGER trg_after_actor_review_update
    AFTER UPDATE 
    ON actor_review
    FOR EACH ROW
BEGIN
   CALL user_like_level(NEW.user_code);
END //

delimiter ;


-- 샘플 데이터 (movie_review)
INSERT 
  INTO movie_review
(
  code
, score
, date
, content
, report_count
, number
, user_code
, movie_code
)
VALUES
  (1, 4.2, NOW(), '정말 감동적이었어요.', 1, 30, 1, 1)
, (2, 5.0, NOW(), '액션이 살아있네.', 2, 25,2, 2)
, (3, 3.2, NOW(), '웃기고 재미있어요.', 3, 60, 3, 3)
, (4, 4.5, NOW(), '배우 연기가 최고입니다.', 4, 40, 4, 4)
, (5, 2.5, NOW(), '배우 연기가 별론데예.', 4, 10, 5, 5)
, (6, 4.1, NOW(), '배우 연기가 별론데예.', 4, 10, 6, 6)
, (7, 3.7, NOW(), '웃기고 재미있어요.', 3, 60, 7, 7)
, (8, 4.5, NOW(), '배우 연기가 최고입니다.', 4, 40, 8, 8)
, (9, 2.5, NOW(), '배우 연기가 별론데예.', 4, 10, 9, 9)
, (10, 4.1, NOW(), '배우 연기가 별론데예.', 4, 10, 10, 10);
-- 샘플 데이터 (actor_review)
INSERT
INTO actor_review
(
  code
, score
, content
, date
, report_count
, number
, movie_code
, actor_code
, user_code
)
VALUES
  (1, 4, '송강호 연기 최고예요.', NOW(), 1, 10, 1, 1, 1)
, (2, 5, '박소담 연기 너무 좋아요.', NOW(), 2, 45, 2, 2, 2)
, (3, 3, '최우식 배우 눈빛 연기 굿.', NOW(), 3, 80, 3, 3, 3)
, (4, 4, '송강호 연기 최고예요.', NOW(), 4, 10, 4, 4, 4)
, (5, 5, '박소담 연기 너무 좋아요.', NOW(), 5, 10, 5, 5, 5)
, (6, 3, '최우식 배우 눈빛 연기 굿.', NOW(), 6, 10, 6, 6, 6)
, (7, 3, '최우식 배우 눈빛 연기 굿.', NOW(), 3, 80, 7, 7, 7)
, (8, 4, '송강호 연기 최고예요.', NOW(), 4, 10, 8, 8, 8)
, (9, 5, '박소담 연기 너무 좋아요.', NOW(), 5, 10, 9, 9, 9)
, (10, 3, '최우식 배우 눈빛 연기 굿.', NOW(), 6, 10, 10, 10, 10);

-- 트리거 자동 실행 확인을 위해 좋아요 수 수정
UPDATE movie_review SET number = 50 WHERE code = 1;

-- 수동으로 실행 테스트
CALL user_like_level(1);
CALL user_like_level(2);
CALL user_like_level(3);
CALL user_like_level(4);
CALL user_like_level(5);
CALL user_like_level(6);
CALL user_like_level(7);
CALL user_like_level(8);
CALL user_like_level(9);
CALL user_like_level(10);
-- 결과 확인
SELECT
       u.code AS '회원코드'
     , u.id AS 'ID'
     , u.pw AS 'PW'
     , u.name AS '회원명'
     , u.birth_date AS '생년월일'
     , u.status AS '회원상태'
     , u.expires_at AS '정지해제일'
     , u.report_count AS '신고횟수'
     , u.like_count AS '좋아요수'
     , u.id_number AS '주민등록번호'
     , r.user_role AS '권한명'
     , l.name AS '등급명'
  FROM user u
  LEFT JOIN role r ON u.role_code = r.code
  LEFT JOIN level l ON u.level_code = l.code ;
