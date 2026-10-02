-- B4 Discounted Price Function
CREATE OR REPLACE FUNCTION fn_discounted_price(p_price IN NUMBER, p_discount_pct IN NUMBER)
RETURN NUMBER
IS
  v_final NUMBER;
BEGIN
  IF p_price IS NULL OR p_discount_pct IS NULL THEN
    RAISE_APPLICATION_ERROR(-20002, 'Price and discount cannot be null');
  END IF;
  IF p_price < 0 OR p_discount_pct < 0 OR p_discount_pct > 100 THEN
    RAISE_APPLICATION_ERROR(-20003, 'Invalid price or discount percent');
  END IF;
  
  v_final := p_price - (p_price * p_discount_pct / 100);
  RETURN v_final;
END;
/
