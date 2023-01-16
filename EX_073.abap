*&---------------------------------------------------------------------*
*&  Exercicio 73
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_073.

*Contains a select-options for numeric values and print the result of multiplying each number
*within the range of 3

DATA V_NUMBER TYPE I.
SELECT-OPTIONS S_NUMBER FOR V_NUMBER NO-EXTENSION.

START-OF-SELECTION.

  DATA V_DIFFERENCE TYPE I.
  DATA V_MULTIPLICATION_RESULT TYPE I.

  V_DIFFERENCE = S_NUMBER-HIGH - S_NUMBER-LOW + 1.

  DO V_DIFFERENCE TIMES.
    V_MULTIPLICATION_RESULT = ( S_NUMBER-LOW + SY-INDEX - 1 ) * 3.
    WRITE V_MULTIPLICATION_RESULT.
    NEW-LINE.
  ENDDO.