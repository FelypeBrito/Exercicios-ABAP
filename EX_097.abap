*&---------------------------------------------------------------------*
*&  Exercicio 97
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_097.


*Declare a selection screen with one parameter and a select-options. Save a variant so that the
*parameter is blocked for input and the select-options is hidden.

  DATA LV_TIME   TYPE T.

  PARAMETERS P_TIME   TYPE T.

  SELECT-OPTIONS SO_TIME FOR LV_TIME.