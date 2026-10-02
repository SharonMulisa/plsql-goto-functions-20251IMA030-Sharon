-- B3 Check Odd/Even Function
CREATE OR REPLACE FUNCTION fn_is_odd(p_num IN NUMBER)
RETURN BOOLEAN
IS
BEGIN
  IF p_num IS NULL THEN
    RETURN NULL;
  END IF;
  RETURN MOD(p_num, 2) = 1;
END;
/
-- Test example:
-- IF fn_is_odd(5) THEN DBMS_OUTPUT.PUT_LINE('Odd'); END IF;
