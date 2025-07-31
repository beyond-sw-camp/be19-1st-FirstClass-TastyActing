-- 회원 정보 조회(등록된 모든 회원 정보 삽입 후 조회)
INSERT INTO user (id, pw, name, my_number,birth_date, status, expires_at, report_count, role_code, level_code)
VALUES
('user001', 'pass1234', '홍길동','961212-1356215', '1995-04-21', 'normal', NULL, 6, 1, 1),
('user002', 'abcd1234', '김영희','751265-4578511', '1990-10-15', 'normal', CURDATE(), 4, 1, 2),
('user003', 'abcd1234', '김영순','561011-2345142', '1992-10-15', 'normal', CURDATE(), 9, 1, 2),
('user004', 'fdd1234', '박찬희','680831-1448142', '1995-11-23', 'normal', CURDATE(), 9, 2, 5),
('user005', 'sda8884', '이지규','001101-1628142', '1985-09-23', 'normal', CURDATE(), 4, 3, 1),
('admin01', 'admin!@#$', '관리자','880212-1541695', '1985-01-01', 'normal', NULL, 0, 2, 5);

SELECT * FROM user;