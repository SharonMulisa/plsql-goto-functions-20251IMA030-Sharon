-- B1 Annual Salary Function
CREATE OR REPLACE FUNCTION fn_annual_salary(p_monthly IN NUMBER)
RETURN NUMBER
IS
BEGIN
  IF p_monthly IS NULL OR p_monthly < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Monthly salary must be >= 0');
  END IF;
  RETURN p_monthly * 12;
END;
/
