*&---------------------------------------------------------------------*
*& Exercicio 060
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_060.


*Write an executable program which contains three internal tables (their type must contain at
*least three components of different data types). Each table will have a different type (standard,
*sorted and hashed). Add 3 identical values in each table and view the contents of each table in the
*debugger.

TYPES: BEGIN OF TY_EX60,
         ID   TYPE I,
         NOME TYPE STRING,
         UF   TYPE C LENGTH 2,
       END OF TY_EX60.

DATA IT_STANDART TYPE STANDARD  TABLE OF TY_EX60.
DATA IT_SORTED TYPE SORTED TABLE OF TY_EX60 WITH UNIQUE KEY ID.
DATA IT_HASHED TYPE HASHED TABLE OF TY_EX60 WITH UNIQUE KEY ID.

DATA WA_EX60 TYPE TY_EX60.

START-OF-SELECTION.

  WA_EX60-ID = 01.
  WA_EX60-NOME = 'Felype'.
  WA_EX60-UF = 'SP'.

  APPEND WA_EX60 TO  IT_STANDART.
  INSERT WA_EX60 INTO TABLE IT_SORTED.
  INSERT WA_EX60 INTO TABLE  IT_hashed.

  CLEAR: WA_EX60.

  WA_EX60-ID = 03.
  WA_EX60-NOME = 'Letissa'.
  WA_EX60-UF = 'SP'.

  APPEND WA_EX60 TO  IT_STANDART.
  INSERT WA_EX60 INTO TABLE IT_SORTED.
  INSERT WA_EX60 INTO TABLE  IT_hashed.

  CLEAR: WA_EX60.

  WA_EX60-ID = 02.
  WA_EX60-NOME = 'Gabriel'.
  WA_EX60-UF = 'SP'.

  APPEND WA_EX60 TO  IT_STANDART.
  INSERT WA_EX60 INTO TABLE IT_SORTED.
  INSERT WA_EX60 INTO TABLE  IT_hashed.

  CLEAR: WA_EX60.