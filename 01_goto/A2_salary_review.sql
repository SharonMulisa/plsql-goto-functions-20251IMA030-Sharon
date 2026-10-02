-- A2 Salary Review with GOTO
DECLARE
  v_salary NUMBER := 2500;
BEGIN
  IF v_salary < 3000 THEN
    GOTO low_salary;
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Salary is satisfactory');
  GOTO end_proc;
  
  <<low_salary>>
  DBMS_OUTPUT.PUT_LINE('Salary too low, needs review');
  
  <<end_proc>>
  DBMS_OUTPUT.PUT_LINE('Review completed');
END;
/
