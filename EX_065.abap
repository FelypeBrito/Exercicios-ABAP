*&---------------------------------------------------------------------*
*& Exercicio 065
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_065.

*Write an executable program which has a routine that receives an internal table of strings
*and concatenates their values in four different ways:
*1. Way 1: concatenate internal table texts by the line order
*2. Way 2: concatenate internal table texts by the text ascending order
*3. Way 3: concatenate internal table texts by the text descending order
*4. Way 4: concatenate internal table texts by the line reverse order

TYPES: BEGIN OF TY_EX65,
         NOME TYPE STRING,

       END OF TY_EX65.

TYPES TY_table4 TYPE STANDARD TABLE OF TY_EX65.

DATA: IT_EX065             TYPE TY_TABLE4,
      WA_TESTE             TYPE TY_EX65,
      VL_NUMBER_OF_STRINGS TYPE I,
      RESULT               TYPE STRING.
FIELD-SYMBOLS: <STRING_LINE> TYPE TY_EX65,
               <STRING>      TYPE STRING.


START-OF-SELECTION.
  WRITE: / 'Exercicio 65'.

  WA_TESTE-NOME = 'Gabriel'.
  APPEND WA_TESTE TO IT_EX065.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Felype'.
  APPEND WA_TESTE TO IT_EX065.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Manuella'.
  APPEND WA_TESTE TO IT_EX065.
  CLEAR:WA_TESTE.

  WRITE: / 'Forma 1'.
  PERFORM ZF_065 USING IT_EX065.
  CLEAR:RESULT.

  SORT  IT_EX065 BY NOME ASCENDING.
  WRITE: / 'Forma 2'.
  PERFORM ZF_065 USING IT_EX065.
  CLEAR:RESULT.

  SORT  IT_EX065 BY NOME DESCENDING.
  WRITE: / 'Forma 3'.
  PERFORM ZF_065 USING IT_EX065.
  CLEAR:RESULT.

  WRITE: / 'Forma 4'.


  DESCRIBE TABLE IT_EX065 LINES VL_NUMBER_OF_STRINGS.
  WHILE VL_NUMBER_OF_STRINGS > 0.
    READ TABLE IT_EX065 ASSIGNING <STRING_LINE> INDEX
   VL_NUMBER_OF_STRINGS.
    IF SY-SUBRC IS INITIAL.
      CONCATENATE RESULT <STRING_LINE>-NOME INTO RESULT.
    ENDIF.
    UNASSIGN <STRING_LINE>.
    VL_NUMBER_OF_STRINGS = VL_NUMBER_OF_STRINGS - 1.
  ENDWHILE.
  WRITE: / 'Concatenado: ', RESULT.
  CLEAR:RESULT.

FORM ZF_065 USING IT_EX065 TYPE TY_TABLE4.


  FIELD-SYMBOLS: <FS_TESTE> TYPE TY_EX65.


  LOOP AT IT_EX065 ASSIGNING <FS_TESTE>.

    CONCATENATE RESULT <FS_TESTE>-NOME  INTO RESULT.

  ENDLOOP.
  WRITE: / 'Concatenado: ', RESULT.

ENDFORM.