-- 감독정보수정

delimiter //
CREATE OR REPLACE PROCEDURE updateDirector(
       IN d_code INTEGER
     , IN d_name VARCHAR(50)
     , IN d_filename VARCHAR(255)
     , IN d_re_name VARCHAR(255)
     , IN d_path VARCHAR(255)
     , IN d_date DATETIME
)
BEGIN
   REPLACE
      INTO director 
    VALUES
   (
           d_code
         , d_name
         , d_filename
         , d_re_name
         , d_path
         , d_date
    );
END //
delimiter ;

CALL updateDirector(11, 'Joseph Kosinski', 'josephkosinski.jpg', 'josephkosinski.jpg', '/uploads/directors/', NULL);

-- 감독 이름을 수정하는 경우
UPDATE director
   SET NAME = 'Joseph Kosinski'
 WHERE CODE = 11;
 
-- 감독 사진을 수정하는 경우
UPDATE director
   SET filename = 'Josephkosinski_new.jpg'
 WHERE CODE = 11;