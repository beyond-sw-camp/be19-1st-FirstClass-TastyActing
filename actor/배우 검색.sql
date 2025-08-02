
SELECT 
       name
	 , information
	 , filename
	 , re_name 
	 , path
	 , date 
  FROM actor
 WHERE NAME LIKE CONCAT('%송%');
