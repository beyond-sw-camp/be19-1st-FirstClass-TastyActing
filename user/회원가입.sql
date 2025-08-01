-- 회원 가입
SELECT * FROM user;

INSERT INTO user (
    id, pw, name, birth_date, id_number, status, expires_at, report_count, like_count, role_code, level_code
)
SELECT
    'user004', 'pw1234', '황철구', '1998-12-12', '981212-1541111', 'normal', NULL, 0, 0, 1, 1
FROM DUAL
WHERE NOT EXISTS (
    SELECT 1
    FROM blacklist                       
    WHERE name = '황철구'
      AND id_number = '981212-1541111'
);



-- 트리거 버전
DELIMITER //

CREATE TRIGGER prevent_blacklisted_user
   BEFORE INSERT ON user
   FOR EACH ROW
BEGIN
    -- 블랙리스트에 같은 주민번호(id_number)가 존재하면 오류 발생
    IF EXISTS (
        SELECT 1
        FROM blacklist
        WHERE id_number = NEW.id_number
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = '가입 불가: 블랙리스트에 등록된 사용자입니다.';
    END IF;
END;
//

DELIMITER ;

-- 블랙리스트에 등록
-- INSERT INTO blacklist (name, id_number) VALUES ('황철구', '981212-1541111');

-- 회원가입 시도
INSERT INTO user (
    id, pw, name, birth_date, id_number, status, expires_at, report_count, like_count, role_code, level_code
)
VALUES 
(
    'user004', 'pw1234', '황철구', '1998-12-12', '981212-1541111', 'normal', NULL, 0, 0, 1, 1
);



