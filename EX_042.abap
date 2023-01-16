*&---------------------------------------------------------------------*
*& Exercicio 042
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_042.


* Write an executable program that get two integers inside variables and perform the addition,
*subtraction, multiplication, division and power between them.

  DATA: LV_A      TYPE I,
        LV_B      TYPE I,
        LV_RESULT TYPE I.

  LV_A = 5.
  LV_B = 2.

  WRITE / 'Exercicio 042'.
  LV_RESULT = LV_A + LV_B.
  WRITE / LV_RESULT.

  LV_RESULT = LV_A - LV_B.
  WRITE / LV_RESULT.

  LV_RESULT = LV_A * LV_B.
  WRITE / LV_RESULT.

  LV_RESULT = LV_A ** LV_B.
  WRITE / LV_RESULT.