*&---------------------------------------------------------------------*
*&  Exercicio 76
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_076.

*Declare a select-options for numeric values without multiple ranges. Then, validate if a
*range bigger than 100 is entered and if it is, show an error message.

DATA: V_NUMBER     TYPE I,
      LV_INTERVALO TYPE I.
SELECT-OPTIONS S_NUMBER FOR V_NUMBER NO-EXTENSION.

START-OF-SELECTION.

AT SELECTION-SCREEN ON S_NUMBER.

  LV_INTERVALO = S_NUMBER-HIGH - S_NUMBER-LOW.


  IF LV_INTERVALO > 100.
    MESSAGE 'O intervalo é maior que 100' TYPE 'E'.
  ENDIF.