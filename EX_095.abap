*&---------------------------------------------------------------------*
*&  Exercicio 95
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_095.


*Declare a selection screen with a select-options representing a date range. Then, save a
*variant so that it is filled with a range between the first day of the current month and the current date
*every time the variant is used.

  DATA LV_DAY   TYPE D.

  SELECT-OPTIONS SO_DAY FOR LV_DAY.