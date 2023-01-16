*&---------------------------------------------------------------------*
*&  Exercicio 96
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_096.


*Declare a selection screen with a select-options representing a time range. Then, save a
*variant so that these fields are filled with the start of day until the current time every time the
*variant is used.

  DATA LV_TIME   TYPE T.

  SELECT-OPTIONS SO_TIME FOR LV_TIME.