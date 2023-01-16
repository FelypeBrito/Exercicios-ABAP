*&---------------------------------------------------------------------*
*& Exercicio 054
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_054.

*Write an executable program that has a routine that receives two numbers and return a flag
*(character with length 1). If the numbers are equal, set the flag with 'X. Otherwise set the flag to
*space.

DATA GV_FLAG TYPE C.

START-OF-SELECTION.
  PERFORM ZF_flag USING 1 1 CHANGING GV_FLAG.
  WRITE: / 'Exercicio 054'.
  WRITE: / 'Flag: ', GV_FLAG.

FORM ZF_FLAG
  USING
        LV_A  TYPE F
        LV_B  TYPE F
  CHANGING
      LV_FLAG TYPE C.

  IF LV_A <> LV_B.

    LV_FLAG = SPACE.

  ELSE.

    LV_FLAG = 'X'.

  ENDIF.

ENDFORM.