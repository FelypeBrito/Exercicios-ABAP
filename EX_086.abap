*&---------------------------------------------------------------------*
*&  Exercicio 86
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_086.


*Declare a checkbox and an input field side-by-side inside a frame.

SELECTION-SCREEN: BEGIN OF BLOCK BTESTE1 WITH FRAME.

  SELECTION-SCREEN: BEGIN OF LINE.

    SELECTION-SCREEN POSITION 5.
    PARAMETERS CB_TESTE AS CHECKBOX.

    SELECTION-SCREEN POSITION 10.
    PARAMETERS P_TESTE TYPE STRING.

  SELECTION-SCREEN: END OF LINE.
SELECTION-SCREEN: END OF BLOCK BTESTE1.