*&---------------------------------------------------------------------*
*& Exercicio 043
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_043.


*Write an executable program that get two integers inside parameters and perform the
*addition, subtraction, multiplication, division and power between them.

  PARAMETERS P_A   TYPE I.
 PARAMETERS P_B TYPE I.
  DATA LV_RESULT1 TYPE I.


  WRITE / 'Exercicio 043'.
  LV_RESULT = P_A + P_B.
  WRITE / LV_RESULT.

  LV_RESULT = P_A - P_B.
  WRITE / LV_RESULT.

  LV_RESULT = p_A * p_B.
  WRITE / LV_RESULT.

  LV_RESULT = p_A ** p_B.
  WRITE / LV_RESULT.