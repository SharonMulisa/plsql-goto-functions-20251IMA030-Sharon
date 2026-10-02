-- A1 Number Classifier using GOTO
SET SERVEROUTPUT ON;
DECLARE
  v_num NUMBER := &input_number;
BEGIN
  IF v_num > 0 THEN
    GOTO positive_label;
  ELSIF v_num < 0 THEN
    GOTO negative_label;
  ELSE
    GOTO zero_label;
  END IF;

  <<positive_label>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is POSITIVE');
  GOTO end_prog;

  <<negative_label>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is NEGATIVE');
  GOTO end_prog;

  <<zero_label>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is ZERO');

  <<end_prog>>
  DBMS_OUTPUT.PUT_LINE('Classification done.');
END;
/
