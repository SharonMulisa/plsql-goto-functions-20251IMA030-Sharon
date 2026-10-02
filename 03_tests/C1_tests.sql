-- C1 Master Tests - Run all functions and procedures
SET SERVEROUTPUT ON;

-- Test B1
BEGIN
  DBMS_OUTPUT.PUT_LINE('B1 Annual Salary 2000 => ' || fn_annual_salary(2000));
END;
/

-- Test B2
BEGIN
  DBMS_OUTPUT.PUT_LINE('B2 Grade 85 => ' || fn_grade_label(85));
  DBMS_OUTPUT.PUT_LINE('B2 Grade 65 => ' || fn_grade_label(65));
  DBMS_OUTPUT.PUT_LINE('B2 Grade 45 => ' || fn_grade_label(45));
END;
/

-- Test B3
BEGIN
  IF fn_is_odd(7) THEN
    DBMS_OUTPUT.PUT_LINE('B3 7 is Odd: TRUE');
  ELSE
    DBMS_OUTPUT.PUT_LINE('B3 7 is Odd: FALSE');
  END IF;
  IF fn_is_odd(8) THEN
    DBMS_OUTPUT.PUT_LINE('B3 8 is Odd: TRUE');
  ELSE
    DBMS_OUTPUT.PUT_LINE('B3 8 is Odd: FALSE');
  END IF;
END;
/

-- Test B4
BEGIN
  DBMS_OUTPUT.PUT_LINE('B4 Price 1000, Discount 10% => ' || fn_discounted_price(1000,10));
END;
/

-- Test A1 logic without GOTO
BEGIN
  DBMS_OUTPUT.PUT_LINE('All tests completed successfully');
END;
/
