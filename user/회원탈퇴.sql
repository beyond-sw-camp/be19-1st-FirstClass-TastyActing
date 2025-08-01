SELECT * FROM user;   -- 회원 코드 확인

-- 회원 탈퇴
DELIMITER //

CREATE OR REPLACE PROCEDURE delete_user(IN in_user_code INT)
BEGIN
    UPDATE user
       SET STATUS = 'deleted'
     WHERE code = in_user_code;
END//

DELIMITER ;

CALL delete_user(1);
