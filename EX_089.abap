*&---------------------------------------------------------------------*
*&  Exercicio 89
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_089.


*Declare three parameters. There should be a horizontal line separating the first two ones and
*a blank line separating the last two.

  PARAMETERS P_NUM1 TYPE I.

  SELECTION-SCREEN ULINE.
  PARAMETERS P_STR TYPE STRING.

  SELECTION-SCREEN SKIP.
  PARAMETERS P_CARAC TYPE C LENGTH 5.