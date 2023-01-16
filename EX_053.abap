*&---------------------------------------------------------------------*
*& Exercicio 053
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_053.

*Write an executable program that has a routine that receives two numbers and returns the
*largest of them, If the numbers are equal return the number itself.

DATA GV_TAMANHO TYPE F.

START-OF-SELECTION.
  PERFORM ZF_TAMANHO USING 1 5 CHANGING GV_TAMANHO.
  WRITE: / 'Exercicio 053'.
  WRITE: / 'Maior é: ', GV_TAMANHO.

FORM ZF_TAMANHO
  USING
        LV_A  TYPE F
        LV_B  TYPE F
  CHANGING
      lv_MAIOR TYPE F.

  IF LV_A >= LV_B.

    lv_MAIOR = LV_A.

  ELSE.

    lv_MAIOR = LV_B.

  ENDIF.

ENDFORM.