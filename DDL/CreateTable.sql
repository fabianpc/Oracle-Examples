DECLARE
  c INT;
BEGIN
  SELECT COUNT(*)
  INTO c
  FROM user_tables
  WHERE table_name = 'TABLENAME_A';
  IF c             = 1 THEN
    EXECUTE immediate 'DROP TABLE TABLENAME_A';
    EXECUTE immediate 'CREATE TABLE TABLENAME_A  
    (     
      FIELD_A VARCHAR2(10 BYTE), 
	    FIELD_B VARCHAR2(10 BYTE)
    )' ;
  ELSE
    EXECUTE immediate 'CREATE TABLE TABLENAME_A 
    (     
      FIELD_A VARCHAR2(10 BYTE), 
	    FIELD_B VARCHAR2(10 BYTE)
    )' ;
  END IF;
END;
