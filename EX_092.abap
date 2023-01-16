*&---------------------------------------------------------------------*
*&  Exercicio 92
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_092.


*Declare a selection screen with two time parameters. The first once should be typed with the
*primitive type. The second, with type SYST-UZEIT. Is there any different between them when
*filling the selection screen? What about the documentation displayed when you hit F1 key?

  PARAMETERS P_time   TYPE T.
  PARAMETERS P_UZEIT  TYPE SYST-UZEIT.
