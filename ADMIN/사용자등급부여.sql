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
          IFNULL(SUM(b.like_count), 0) +
          IFNULL(SUM(c.like_count), 0)
     INTO total_likes
     FROM user a
     LEFT JOIN movie_review b ON a.code = b.user_code
     LEFT JOIN actor_review c ON a.code = c.user_code
    WHERE a.code = t_code;

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

-- movie_review와 actor_review테이블에서 좋아요가 바뀔 때마다 
-- 반영되도록 트리거 작성. like_count의 합 구하는 procedure 호출.
delimiter //

CREATE OR REPLACE TRIGGER trg_movie_review
    AFTER UPDATE
    ON movie_review
    FOR EACH ROW
BEGIN
   CALL user_like_level(NEW.user_code);
END //

CREATE OR REPLACE TRIGGER trg_actor_review
    AFTER UPDATE 
    ON actor_review
    FOR EACH ROW
BEGIN
   CALL user_like_level(NEW.user_code);
END //

delimiter ;

-- 트리거확인을 위한 좋아요 수 수정
UPDATE movie_review SET like_count = 50 WHERE code = 1;

-- 실행 테스트
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
       a.code AS '회원코드'
     , a.id AS 'ID'
     , a.pw AS 'PW'
     , a.name AS '회원명'
     , a.birth_date AS '생년월일'
     , a.status AS '회원상태'
     , a.expires_at AS '정지해제일'
     , a.report_count AS '신고횟수'
     , a.like_count AS '좋아요수'
     , a.id_number AS '주민등록번호'
     , b.user_role AS '권한명'
     , c.name AS '등급명'
  FROM user a
  LEFT JOIN role b ON a.role_code = b.code
  LEFT JOIN level c ON a.level_code = c.code ;
