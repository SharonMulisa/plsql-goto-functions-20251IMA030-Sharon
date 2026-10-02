-- A2 Salary Review using GOTO
SET SERVEROUTPUT ON;
DECLARE
  v_salary NUMBER := &emp_salary;
BEGIN
  IF v_salary < 1000 THEN
    GOTO low_sal;
  ELSIF v_salary BETWEEN 1000 AND 3000 THEN
    GOTO mid_sal;
  ELSE
    GOTO high_sal;
  END IF;

  <<low_sal>>
  DBMS_OUTPUT.PUT_LINE('Salary '||v_salary||' -> Needs Review: Low Salary');
  GOTO the_end;

  <<mid_sal>>
  DBMS_OUTPUT.PUT_LINE('Salary '||v_salary||' -> Standard Salary');
  GOTO the_end;

  <<high_sal>>
  DBMS_OUTPUT.PUT_LINE('Salary '||v_salary||' -> High Salary: Executive Level');

  <<the_end>>
  NULL;
END;
/
