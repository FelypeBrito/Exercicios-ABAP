*&---------------------------------------------------------------------*
*& Exercicio 070
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_070.

*Have a routine that receives an internal table (with at least three columns) and the sort it by
*its first column

  TYPES: BEGIN OF TY_EX070,
           ID    TYPE N LENGTH 8,
           NOME  TYPE C LENGTH 23,
           IDADE TYPE I,
         END OF TY_EX070.

  TYPES TY_table5 TYPE STANDARD TABLE OF TY_EX070.
  DATA: IT_REGISTRO2 TYPE  TY_table5,
        WA_REGISTRO2 TYPE TY_EX070.

START-OF-SELECTION.

  WA_REGISTRO2-ID = 4.
  WA_REGISTRO2-NOME = 'Manuella'.
  WA_REGISTRO2-IDADE = 07.
  APPEND WA_REGISTRO2 TO IT_REGISTRO2.

  WA_REGISTRO2-ID = 1.
  WA_REGISTRO2-NOME = 'Felype'.
  WA_REGISTRO2-IDADE = 22.
  APPEND WA_REGISTRO2 TO IT_REGISTRO2.


  WA_REGISTRO2-ID = 3.
  WA_REGISTRO2-NOME = 'Vitor'.
  WA_REGISTRO2-IDADE = 16.
  APPEND WA_REGISTRO2 TO IT_REGISTRO2.


  WA_REGISTRO2-ID = 2.
  WA_REGISTRO2-NOME = 'Gabriel'.
  WA_REGISTRO2-IDADE = 19.
  APPEND WA_REGISTRO2 TO IT_REGISTRO2.

  WA_REGISTRO2-ID = 6.
  WA_REGISTRO2-NOME = 'Laudenir'.
  WA_REGISTRO2-IDADE = 50.
  APPEND WA_REGISTRO TO IT_REGISTRO2.

  WA_REGISTRO2-ID = 5.
  WA_REGISTRO2-NOME = 'Lucilene'.
  WA_REGISTRO2-IDADE = 46.
  APPEND WA_REGISTRO2 TO IT_REGISTRO2.

  CLEAR: WA_REGISTRO2.
  PERFORM ZF_EX070 CHANGING IT_REGISTRO2.

  WRITE: / 'Exercício 70'.
  LOOP AT IT_REGISTRO2 INTO WA_REGISTRO2.

    WRITE: / 'Registro: ', WA_REGISTRO2-ID, WA_REGISTRO2-NOME, WA_REGISTRO2-IDADE.

  ENDLOOP.


FORM ZF_EX070 CHANGING IT_TESTE2 TYPE  TY_table5.

  SORT IT_TESTE2 BY ID.

ENDFORM.