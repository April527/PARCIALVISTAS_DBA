--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_PALINDROME
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "EJERCICIOS"."FUNCTION_PALINDROME" (n IN NUMBER)
RETURN NUMBER IS 
  Z NUMBER := 0;
  m NUMBER ;
  rev NUMBER := 0;
  r NUMBER ;
  n1 NUMBER;
  --X VARCHAR(150) := '';

BEGIN
        m:=n;
        while n>0
        loop
            r:=mod(n,10);
            rev:=(rev*10)+r;
            n1:=trunc(n/10);
        end loop;

        DBMS_OUTPUT.PUT_LINE( rev);

        if (m=rev)
        then
            Z:= 1;
        else
            Z:= 2;
        end if;

      RETURN Z;
END;
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "EJERCICIOS"."FUNCTION_1" (a IN NUMBER, b IN NUMBER, c IN NUMBER)
RETURN VARCHAR2 IS 
  Z VARCHAR(150) := '';
  X VARCHAR(150) := '';
  --Z VARCHAR(150) := '';
BEGIN
        X:=CONCAT(a, (a*b));

       IF b >= c THEN
            Z := CONCAT(X,' andres');
       ELSE 
            Z := CONCAT(X,' martinez');
       END IF;

      RETURN Z;
END;
