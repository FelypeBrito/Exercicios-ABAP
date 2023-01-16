*&---------------------------------------------------------------------*
*&  Exercicio 83
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_083.


*Declare four parameters. The first two should have a character type and the last two a
*numeric type. Separate each pair in the selection screen using selection screen blocks. Both blocks
*should contain a frame so it's possible to see the separation between them.

SELECTION-SCREEN: BEGIN OF BLOCK BDADOS1 WITH FRAME .

  PARAMETERS: P_C1 TYPE C.

  PARAMETERS: P_C2 TYPE C.

SELECTION-SCREEN: END OF BLOCK BDADOS1.

SELECTION-SCREEN: BEGIN OF BLOCK BDADOS2 WITH FRAME.

  PARAMETERS:P_NUM1  TYPE I.

  PARAMETERS: P_NUM2 TYPE I.

SELECTION-SCREEN: END OF BLOCK BDADOS2.