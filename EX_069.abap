*&---------------------------------------------------------------------*
*& Exercicio 069
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_069.

*Write an executable program which has two internal tables, with a header line and the other
*without. Add five records in each table. In the case of the one with header line, use it embed work
*area. For the other one, use a work area declared explicitly. Print the contents of both internal tables.

TYPES: BEGIN OF TY_EX069,
         ID    TYPE N LENGTH 8,
         NOME  TYPE C LENGTH 23,
         IDADE TYPE I,
       END OF TY_EX069.

DATA IT_REGISTRO TYPE TABLE OF TY_EX069.
DATA IT_REGISTRO_CAB TYPE TABLE OF TY_EX069 WITH HEADER LINE.

DATA WA_REGISTRO TYPE TY_EX069.

START-OF-SELECTION.

  WA_REGISTRO-ID = 1.
  WA_REGISTRO-NOME = 'Felype'.
  WA_REGISTRO-IDADE = 22.
  APPEND WA_REGISTRO TO IT_REGISTRO.

  WA_REGISTRO-ID = 2.
  WA_REGISTRO-NOME = 'Gabriel'.
  WA_REGISTRO-IDADE = 19.
  APPEND WA_REGISTRO TO IT_REGISTRO.

  WA_REGISTRO-ID = 3.
  WA_REGISTRO-NOME = 'Vitor'.
  WA_REGISTRO-IDADE = 16.
  APPEND WA_REGISTRO TO IT_REGISTRO.

  WA_REGISTRO-ID = 4.
  WA_REGISTRO-NOME = 'Manuella'.
  WA_REGISTRO-IDADE = 07.
  APPEND WA_REGISTRO TO IT_REGISTRO.

  WA_REGISTRO-ID = 5.
  WA_REGISTRO-NOME = 'Lucilene'.
  WA_REGISTRO-IDADE = 46.
  APPEND WA_REGISTRO TO IT_REGISTRO.

  WA_REGISTRO-ID = 6.
  WA_REGISTRO-NOME = 'Laudenir'.
  WA_REGISTRO-IDADE = 50.
  APPEND WA_REGISTRO TO IT_REGISTRO.

  IT_REGISTRO_CAB-ID = 1.
  IT_REGISTRO_CAB-NOME = 'Felype'.
  IT_REGISTRO_CAB-IDADE = 22.
  APPEND IT_REGISTRO_CAB.

  IT_REGISTRO_CAB-ID = 2.
  IT_REGISTRO_CAB-NOME = 'Gabriel'.
  IT_REGISTRO_CAB-IDADE = 19.
  APPEND IT_REGISTRO_CAB.

  IT_REGISTRO_CAB-ID = 3.
  IT_REGISTRO_CAB-NOME = 'Vitor'.
  IT_REGISTRO_CAB-IDADE = 16.
  APPEND IT_REGISTRO_CAB.

  IT_REGISTRO_CAB-ID = 4.
  IT_REGISTRO_CAB-NOME = 'Manuella'.
  IT_REGISTRO_CAB-IDADE = 07.
  APPEND IT_REGISTRO_CAB.

  IT_REGISTRO_CAB-ID = 5.
  IT_REGISTRO_CAB-NOME = 'Lucilene'.
  IT_REGISTRO_CAB-IDADE = 46.
  APPEND IT_REGISTRO_CAB.

  IT_REGISTRO_CAB-ID = 6.
  IT_REGISTRO_CAB-NOME = 'Laudenir'.
  IT_REGISTRO_CAB-IDADE = 50.
  APPEND IT_REGISTRO_CAB.

  CLEAR: WA_REGISTRO.
  WRITE: / 'Exercício 69'.
  LOOP AT IT_REGISTRO INTO WA_REGISTRO.

    WRITE: / 'Registro: ', WA_REGISTRO-ID, WA_REGISTRO-NOME, WA_REGISTRO-IDADE.

  ENDLOOP.

  LOOP AT IT_REGISTRO_CAB.

    WRITE: / 'Registro: ', IT_REGISTRO_CAB-ID, IT_REGISTRO_CAB-NOME, IT_REGISTRO_CAB-IDADE.

  ENDLOOP.