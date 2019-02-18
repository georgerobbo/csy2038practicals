--FUNCTION

--spec

CREATE OR REPLACE FUNCTION func_instructor_ct
RETURN number IS

--body

vn_instructor_ct NUMBER(3);
BEGIN
	SELECT COUNT(*)
	INTO vn_instructor_ct
	FROM instructors;
	
	RETURN vn_instructor_ct;
	
	END func_instructor_ct;
/
SHOW ERRORS;

--PROCEDURE

--spec

CREATE OR REPLACE PROCEDURE proc_using_func IS

--body

vn_no_of_instructors NUMBER(3);

BEGIN
vn_no_of_instructors:= func_instructor_ct;
	
	DBMS_OUTPUT.PUT_LINE ('There are ' ||vn_no_of_instructors|| ' instructor(s) in the database.');
END proc_using_func;
/
SHOW ERRORS;

--spec

CREATE OR REPLACE FUNCTION func_param_ct
RETURN number IS

--body

vn_instructor_ct NUMBER(3);

BEGIN
	SELECT COUNT(*)
	INTO vn_instructor_ct
	FROM instructors
	WHERE salary  > '5000';
	
	RETURN vn_instructor_ct;
	
	END func_param_ct;
/
SHOW ERRORS;

--PROCEDURE

--spec

CREATE OR REPLACE PROCEDURE proc_param_using_func IS

--body

vn_instructor_salaries NUMBER(3);

BEGIN
vn_instructor_salaries:= func_param_ct;
	
	--printing the result
	DBMS_OUTPUT.PUT_LINE ('There are ' ||vn_instructor_salaries|| ' instructor(s) with a salary over 5000 GBP.');
END proc_param_using_func;
/
SHOW ERRORS;


-- exec proc_param_using_func;