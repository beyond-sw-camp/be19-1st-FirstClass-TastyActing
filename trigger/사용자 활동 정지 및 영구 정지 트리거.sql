-- 사용자 활동 정지 및 영구 정지
-- 사용자 활동 정지(15번 신고된 사용자 활동 정지, warning으로 상태변경 및 처리일자(현재일자)부터 30일 뒤를 정지 만료일로 설정)
-- 사용자 영구 정지(30번 신고된 사용자 강제 탈퇴,banned으로 상태변경 및 blacklist 테이블에 강제 탈퇴 사용자 삽입)

delimiter //

CREATE OR REPLACE TRIGGER user_status_control
BEFORE UPDATE ON user
FOR EACH ROW
BEGIN
    -- 신고 30회: 계정 영구 정지 및 블랙리스트 추가
    IF NEW.report_count = 30 THEN
       
        IF OLD.name IS NOT NULL AND OLD.id_number IS NOT NULL AND NEW.status != 'banned' THEN
            INSERT INTO blacklist (code, name, id_number)
            VALUES (OLD.code, OLD.name, OLD.id_number);
        END IF;
        
        SET NEW.status = 'banned';
        SET NEW.expires_at = NULL;

    -- 신고 15회: 30일 정지
    ELSEIF NEW.report_count = 15 THEN
        SET NEW.status = 'warning';
        SET NEW.expires_at = DATE_ADD(CURDATE(), INTERVAL 30 DAY);     -- 오늘 날짜로부터 30일 뒤를 정지 만료일을 설정
    END IF;
END;
//

delimiter ;