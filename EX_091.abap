*&---------------------------------------------------------------------*
*&  Exercicio 91
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_091.


*Declare a selection screen with two date parameters. The first once should be typed with the
*primitive type. The second, with type SYST-DATUM. Is there any different between them when
*filling the selection screen? What about the documentation displayed when you hit F1 key?

  PARAMETERS P_DAY   TYPE D.
  PARAMETERS P_DATUM TYPE SYST-DATUM.