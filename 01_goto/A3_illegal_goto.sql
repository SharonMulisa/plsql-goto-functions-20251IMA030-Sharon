-- A3 Illegal GOTO and Fix
-- PART 1: ILLEGAL VERSION (will NOT compile)
-- If you try to run this, you get PLS-00375
/*
DECLARE
  v_x NUMBER := 10;
BEGIN
  GOTO inside_if; -- ILLEGAL: jump INTO IF block
  IF v_x > 5 THEN
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Inside IF');
  END IF;
END;
/
-- Error: PLS-00375: illegal GOTO statement; this GOTO cannot branch to label
*/

-- PART 2: FIXED VERSION - Legal GOTO
SET SERVEROUTPUT ON;
DECLARE
  v_x NUMBER := 10;
BEGIN
  IF v_x > 5 THEN
    GOTO inside_if; -- Legal because inside same block
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Inside IF: x > 5, legal GOTO');
  END IF;
  DBMS_OUTPUT.PUT_LINE('Fixed version executed successfully');
END;
/
