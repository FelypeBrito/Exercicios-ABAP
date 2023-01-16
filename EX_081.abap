*&---------------------------------------------------------------------*
*&  Exercicio 81
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_081.


PARAMETERS: P_01 RADIOBUTTON GROUP RAD1 USER-COMMAND ACTION.
PARAMETERS: P_02 RADIOBUTTON GROUP RAD1.
PARAMETERS: P_03 RADIOBUTTON GROUP RAD1.

PARAMETERS: P_TEXT TYPE STRING.


AT SELECTION-SCREEN.
  IF SY-UCOMM = 'ACTION'.
    CLEAR P_TEXT.
  ENDIF.
