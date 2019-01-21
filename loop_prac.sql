SET SERVEROUTPUT ON
--NEEDED TO ALLOW THE CONSOLE TO USE DBMS_OUTPUT.PUT_LINE HAVE TO DO ONE PER SESSION

--EXIT WHEN LOOP

DECLARE
vn_length NUMBER(30) :=0;
vn_counter NUMBER(5) :=1;
vc_firstname VARCHAR2(30) := 'George';
vc_surname VARCHAR2(30) := 'Robertson';

BEGIN
vn_length := LENGTH(vc_firstname);

LOOP

IF vn_counter = vn_length THEN
EXIT;

END IF;
DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));
vn_counter := vn_counter +1;
END LOOP;
END;
/

--Expecting the name to be printed out, however it misses off the last letter

DECLARE
vn_length NUMBER(30) :=0;
vn_counter NUMBER(5) :=1;
vc_firstname VARCHAR2(30) := 'George';
vc_surname VARCHAR2(30) := 'Robertson';

BEGIN
vn_length := LENGTH(vc_firstname);

LOOP

IF vn_counter = vn_length +1 THEN
EXIT;

END IF;
DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));
vn_counter := vn_counter +1;
END LOOP;
END;
/

--vn_length +1 fixes the issue, since the counter starts at 1 it means it cuts off the last letter so the vn_length +1 equalises this

DECLARE
vn_length NUMBER(30) :=0;
vn_counter NUMBER(5) :=1;
vc_firstname VARCHAR2(30) := 'George';
vc_surname VARCHAR2(30) := 'Robertson';

BEGIN
vn_length := LENGTH(vc_firstname);

LOOP

IF vn_counter > vn_length THEN
EXIT;

END IF;
DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));
vn_counter := vn_counter +1;
END LOOP;
END;
/

--Can also use IF vn_counter > vn_length both have the same effect

--While LOOP

DECLARE
vn_length NUMBER(30) :=0;
vn_counter NUMBER(5) :=1;
vc_firstname VARCHAR2(30) := 'George';
vc_surname VARCHAR2(30) := 'Robertson';

BEGIN
vn_length := LENGTH(vc_firstname);

WHILE vn_counter <= vn_length LOOP

DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));
vn_counter := vn_counter +1;

END LOOP;
END;
/
