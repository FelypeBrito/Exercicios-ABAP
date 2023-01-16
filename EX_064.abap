*&---------------------------------------------------------------------*
*& Exercicio 064
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_064.

*Write an executable program which has a routine that receives a standard internal table. The
*line type used in the internal table declaration must contain at least three components any text type.
*The routine should replace all occurrences of "space" by a "_" (underscore) using field symbols
*(and not work areas). Print the table contents before and after calling the routine. The internal table
*must be populated with at least 10 records and contemplating some fields that have "space" in all
*field values, other records containing spaces in just a few fields and other records without spaces at
*all.

TYPES: BEGIN OF TY_EX64,
         NOME      TYPE C LENGTH 7,
         FACULDADE TYPE C LENGTH 20,
         PROFISSAO TYPE C LENGTH 6,
       END OF TY_EX64.

TYPES TY_table3 TYPE STANDARD TABLE OF TY_EX64.

DATA IT_EX64 TYPE TY_TABLE3.

START-OF-SELECTION.

  PERFORM ZF_EX064 CHANGING IT_EX64.

FORM ZF_EX064 CHANGING it_TESTE TYPE TY_table3.

  DATA WA_TESTE TYPE TY_EX64.
  FIELD-SYMBOLS: <FS_TESTE> TYPE TY_EX64.



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

  WRITE: / 'Exercicio 63'.

  LOOP AT IT_TESTE ASSIGNING <fs_TESTE>.
    REPLACE ALL OCCURRENCES OF REGEX '\s' IN <fs_TESTE>-NOME WITH '_' IN CHARACTER
   MODE.
    REPLACE ALL OCCURRENCES OF REGEX '[[:space:]]' IN <fs_TESTE>-PROFISSAO WITH '_' IN
   CHARACTER MODE.
    REPLACE ALL OCCURRENCES OF REGEX '\s' IN <fs_TESTE>-FACULDADE  WITH '_' IN CHARACTER
   MODE.

    WRITE: / <fs_TESTE>-NOME.
    WRITE: / <fs_TESTE>-FACULDADE.
    WRITE: / <fs_TESTE>-PROFISSAO.

    CLEAR: <fs_TESTE>.
  ENDLOOP.


ENDFORM.