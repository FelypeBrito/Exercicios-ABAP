*&---------------------------------------------------------------------*
*& Exercicio 071
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_071.

*Have a routine that receives an internal table (with at least three columns) and a string with
*the name of a column. Sort the table by the specified column accordingly.

TYPES: BEGIN OF TY_EX071,
         ID    TYPE N LENGTH 8,
         NOME  TYPE C LENGTH 23,
         IDADE TYPE I,
       END OF TY_EX071.

TYPES TY_table6 TYPE STANDARD TABLE OF TY_EX071.
DATA: IT_REGISTRO3 TYPE  TY_table6,
      WA_REGISTRO3 TYPE TY_EX071.

START-OF-SELECTION.

  WA_REGISTRO3-ID = 4.
  WA_REGISTRO3-NOME = 'Manuella'.
  WA_REGISTRO3-IDADE = 07.
  APPEND WA_REGISTRO3 TO IT_REGISTRO3.

  WA_REGISTRO3-ID = 1.
  WA_REGISTRO3-NOME = 'Felype'.
  WA_REGISTRO3-IDADE = 22.
  APPEND WA_REGISTRO3 TO IT_REGISTRO3.


  WA_REGISTRO3-ID = 3.
  WA_REGISTRO3-NOME = 'Vitor'.
  WA_REGISTRO3-IDADE = 16.
  APPEND WA_REGISTRO3 TO IT_REGISTRO3.


  WA_REGISTRO3-ID = 2.
  WA_REGISTRO3-NOME = 'Gabriel'.
  WA_REGISTRO3-IDADE = 19.
  APPEND WA_REGISTRO3 TO IT_REGISTRO3.

  WA_REGISTRO3-ID = 6.
  WA_REGISTRO3-NOME = 'Laudenir'.
  WA_REGISTRO3-IDADE = 50.
  APPEND WA_REGISTRO3 TO IT_REGISTRO3.

  WA_REGISTRO3-ID = 5.
  WA_REGISTRO3-NOME = 'Lucilene'.
  WA_REGISTRO3-IDADE = 46.
  APPEND WA_REGISTRO3 TO IT_REGISTRO3.

  CLEAR: WA_REGISTRO3.
  PERFORM ZF_EX071 USING 'NOME' CHANGING IT_REGISTRO3.

  WRITE: / 'Exercício 71'.
  LOOP AT IT_REGISTRO3 INTO WA_REGISTRO3.

    WRITE: / 'Registro: ', WA_REGISTRO3-ID, WA_REGISTRO3-NOME, WA_REGISTRO3-IDADE.

  ENDLOOP.


FORM ZF_EX071 USING NAMECOLUM CHANGING IT_TESTE2 TYPE  TY_table6.

  DATA LV_NOME_COLUN TYPE C LENGTH 20.

  LV_NOME_COLUN = NAMECOLUM.

  SORT IT_TESTE2 BY (NAMECOLUM) ASCENDING.

ENDFORM.