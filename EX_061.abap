*&---------------------------------------------------------------------*
*& Exercicio 061
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_061.

*Write an executable program which has a routine that receives an internal table and print how many
*fields are filled with their default value (the line type of the table must have at least 4 fields).
*Hint: each primitive type has a default value. For example, 0 (zero) is the default value of integers
*whereas space ( ' ' ) is the default value of characters.

  TYPES: BEGIN OF TY_EX61,
           ID         TYPE I,
           NOME       TYPE C LENGTH 20,
           FACULDADE  TYPE STRING,
           NASCIMENTO TYPE D,
         END OF TY_EX61.


  DATA WA_EX61 TYPE TY_EX61.

START-OF-SELECTION.

  PERFORM ZF_EX061 CHANGING WA_EX61.

FORM ZF_EX061 CHANGING wa_TESTE TYPE TY_EX61.

  DATA IT_TESTE TYPE STANDARD TABLE OF TY_EX61.
  DATA LV_SOMA TYPE I.

  WA_TESTE-ID = 1.
  WA_TESTE-NOME = 'Gabriel'.
  WA_TESTE-FACULDADE = 'Ed Fisica'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.


  WA_TESTE-NOME = 'Felype'.
  WA_TESTE-NASCIMENTO =  '20030704'.
  APPEND WA_TESTE TO IT_TESTE.
  CLEAR:WA_TESTE.


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

  ENDLOOP.

  WRITE: / 'Exercicio 61'.
  WRITE: / 'Qnt de valor padrão: ', LV_SOMA.

ENDFORM.