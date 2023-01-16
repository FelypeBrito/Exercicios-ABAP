*&---------------------------------------------------------------------*
*& Exercicio 063
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_063.

*Write an executable program which has a routine that receives a standard internal table. The
*line type used in the internal table declaration must contain at least three components any text type.
*The routine should replace all occurrences of "space" by a "_" (underscore) using work areas (not
*field symbols). Print the table contents before and after calling the routine. The internal table must
*be populated with at least 10 records and contemplating some fields that have "space" in all field
*values, other records containing spaces in just a few fields and other records without spaces at all.

TYPES: BEGIN OF TY_EX63,
         NOME      TYPE C LENGTH 7,
         FACULDADE TYPE C LENGTH 20,
         PROFISSAO TYPE C LENGTH 6,
       END OF TY_EX63.

TYPES TY_table2 TYPE STANDARD TABLE OF TY_EX63.

DATA IT_EX63 TYPE TY_TABLE2.

START-OF-SELECTION.

  PERFORM ZF_EX063 CHANGING IT_EX63.

FORM ZF_EX063 CHANGING it_TESTE TYPE TY_table2.

  DATA WA_TESTE TYPE TY_EX63.



  WA_TESTE-NOME = 'Gabriel'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  WA_TESTE-PROFISSAO = 'Medico'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Felyp e'.
  WA_TESTE-PROFISSAO = 'Enfermerio'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Gabriel'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  WA_TESTE-PROFISSAO = 'Medi co'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Felype'.
  WA_TESTE-PROFISSAO = 'Enfermerio'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Gabri el'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  WA_TESTE-PROFISSAO = 'Medico'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Fely pe'.
  WA_TESTE-PROFISSAO = 'Enfe rmerio'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Gabriel'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  WA_TESTE-PROFISSAO = 'Medi co'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = ''.
  WA_TESTE-PROFISSAO = '                               '.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Gabriel'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  WA_TESTE-PROFISSAO = 'Me dico'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Felype'.
  WA_TESTE-PROFISSAO = 'Enfer    merio'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WRITE: / 'Exercicio 61'.

  LOOP AT IT_TESTE INTO WA_TESTE.

    REPLACE ALL OCCURRENCES OF REGEX '\s' IN WA_TESTE-NOME WITH '_' IN CHARACTER
 MODE.
    REPLACE ALL OCCURRENCES OF REGEX '[[:space:]]' IN WA_TESTE-PROFISSAO WITH '_' IN
   CHARACTER MODE.
    REPLACE ALL OCCURRENCES OF REGEX '\s' IN WA_TESTE-FACULDADE  WITH '_' IN CHARACTER
   MODE.

    WRITE: / WA_TESTE-NOME.
    WRITE: / WA_TESTE-FACULDADE.
    WRITE: / WA_TESTE-PROFISSAO.

    CLEAR: WA_TESTE.

  ENDLOOP.

ENDFORM.