-- B2 Grade Label Function
CREATE OR REPLACE FUNCTION fn_grade_label(p_score IN NUMBER)
RETURN VARCHAR2
IS
BEGIN
  IF p_score IS NULL OR p_score < 0 OR p_score > 100 THEN
    RETURN 'Invalid score';
  ELSIF p_score >= 80 THEN
    RETURN 'A';
  ELSIF p_score >= 70 THEN
    RETURN 'B';
  ELSIF p_score >= 60 THEN
    RETURN 'C';
  ELSIF p_score >= 50 THEN
    RETURN 'D';
  ELSE
    RETURN 'F';
  END IF;
END;
/
