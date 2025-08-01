SELECT * FROM user;   -- 회원 코드 확인

-- 회원 탈퇴
DELIMITER //

CREATE OR REPLACE PROCEDURE delete_user_cascade(IN in_user_code INT)
BEGIN
    DELETE FROM `user` WHERE code = in_user_code;
END//

DELIMITER ;

CALL delete_user_cascade(1);
