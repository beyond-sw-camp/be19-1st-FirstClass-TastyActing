
UPDATE comment
   SET content = content
 WHERE code = comment_code;
CALL updateComment('이 배우의 연기는 바보같아요!', 3);