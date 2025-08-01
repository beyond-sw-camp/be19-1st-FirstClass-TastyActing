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



