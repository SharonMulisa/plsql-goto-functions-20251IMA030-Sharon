-- A4 Rewrite A1 WITHOUT GOTO - Best practice
SET SERVEROUTPUT ON;
DECLARE
  v_num NUMBER := &input_number;
BEGIN
  IF v_num > 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' is POSITIVE');
  ELSIF v_num < 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' is NEGATIVE');
  ELSE
    DBMS_OUTPUT.PUT_LINE(v_num || ' is ZERO');
  END IF;
  DBMS_OUTPUT.PUT_LINE('Classification done (no GOTO version).');
END;
/
