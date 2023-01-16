*&---------------------------------------------------------------------*
*& Exercicio 057
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_057.

*Write an executable program with a routine that receives a work area containing five
*different data types and count how many components are not filled. Finally, print result.

TYPES : BEGIN OF ty_EX057,
          NOME       TYPE STRING,
          NASCIMENTO TYPE D,
          HORAS      TYPE T,
          IDADE      TYPE I,
          FILHOS     TYPE C,
        END OF ty_EX057.

DATA WA_EX057 TYPE TY_EX057.

START-OF-SELECTION.

  WRITE: / 'Exercicio 057'.
  WA_EX057-NOME = 'Felype'.
  WA_EX057-NASCIMENTO = '20001223'.
  WA_EX057-HORAS = '162500'.
  WA_EX057-IDADE = 22.
  WA_EX057-FILHOS = SPACE.

  PERFORM ZF_CHECK
   CHANGING WA_EX057 .



FORM ZF_CHECK
  CHANGING WA_TESTE TYPE TY_EX057 .

  DATA LV_COUNT TYPE I VALUE 0.

  IF WA_TESTE-NOME IS INITIAL.

    LV_COUNT = LV_COUNT + 1.

  ENDIF.
  IF WA_TESTE-NASCIMENTO IS INITIAL.

    LV_COUNT = LV_COUNT + 1.

  ENDIF.
  IF WA_TESTE-IDADE IS INITIAL.

    LV_COUNT = LV_COUNT + 1.

  ENDIF.
  IF WA_TESTE-HORAS IS INITIAL.

    LV_COUNT = LV_COUNT + 1.

  ENDIF.
  IF WA_TESTE-FILHOS IS INITIAL.

    LV_COUNT = LV_COUNT + 1.

  ENDIF.

  WRITE : / LV_COUNT.

ENDFORM.