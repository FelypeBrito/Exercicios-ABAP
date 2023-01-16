*&---------------------------------------------------------------------*
*& Exercicio 062
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_062.

TYPES: BEGIN OF TY_EX62,
         ID         TYPE I,
         NOME       TYPE C LENGTH 20,
         FACULDADE  TYPE STRING,
         NASCIMENTO TYPE D,
       END OF TY_EX62.

TYPES TY_table TYPE STANDARD TABLE OF TY_EX62.

DATA IT_EX62 TYPE TY_TABLE.

START-OF-SELECTION.

  PERFORM ZF_EX062 CHANGING IT_EX62.

FORM ZF_EX062 CHANGING it_TESTE TYPE TY_table.

  DATA WA_TESTE TYPE TY_EX62.
  DATA: LV_SOMA  TYPE I,
        LV_TOTAL TYPE I.

  WA_TESTE-ID = 1.
  WA_TESTE-NOME = 'Gabriel'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WA_TESTE-NOME = 'Felype'.
  WA_TESTE-NASCIMENTO =  '20030704'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.

  WRITE: / 'Exercicio 61'.

  LOOP AT IT_TESTE INTO WA_TESTE.

    IF WA_TESTE-ID IS INITIAL.

      LV_SOMA = LV_SOMA + 1.

    ENDIF.

    IF WA_TESTE-NOME IS INITIAL.

      LV_SOMA = LV_SOMA + 1.

    ENDIF.

    IF WA_TESTE-NASCIMENTO IS INITIAL.

      LV_SOMA = LV_SOMA + 1.

    ENDIF.

    IF WA_TESTE-FACULDADE IS INITIAL.

      LV_SOMA = LV_SOMA + 1.

    ENDIF.

    WRITE: / 'Linha ', SY-TABIX,' => ', LV_SOMA,' campos em branco'.
    LV_TOTAL = LV_TOTAL + LV_SOMA.
    CLEAR: LV_SOMA.

  ENDLOOP.

  WRITE: / 'Total: ', LV_total.

ENDFORM.