*&---------------------------------------------------------------------*
*&  Exercicio 75
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_075.

*Declare a select-options for numeric values without ranges. Then, validate if the number
*zero is entered and if it is, show an error message.

DATA V_NUMBER TYPE I.
SELECT-OPTIONS S_NUMBER FOR V_NUMBER no INTERVALS.

START-OF-SELECTION.

at SELECTION-SCREEN on s_number.
  LOOP AT s_number.
    IF s_number-low = '0'.
      MESSAGE 'Número zero não é aceito' type 'E'.
    ENDIF.

  ENDLOOP.