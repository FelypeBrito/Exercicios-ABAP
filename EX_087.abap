*&---------------------------------------------------------------------*
*&  Exercicio 87
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_087.


*Declare a button inside a selection screen and show an information message when it is
*pressed.

*Error
  SELECTION-SCREEN: BEGIN OF BLOCK GRBG WITH FRAME.

    PARAMETERS RB_EX087 RADIOBUTTON GROUP RBG USER-COMMAND ACTION.

  SELECTION-SCREEN: END OF BLOCK GRBG.



AT SELECTION-SCREEN ON RADIOBUTTON GROUP RBG.

  DATA LV_COMAD LIKE SY-UCOMM.

  LV_COMAD = SY-UCOMM.


  IF LV_COMAD = SY-UCOMM.

    MESSAGE:'Radio Button selecionado' TYPE 'I'.

  ENDIF.
  
*Solution
*  SELECTION-SCREEN PUSHBUTTON 10(8) TEXT-001 USER-COMMAND PRESS. " text-001 =
*  'Press me'
*  AT SELECTION-SCREEN.
*  IF SY-UCOMM = 'PRESS'.
*    MESSAGE 'Button was pressed' TYPE 'I'.
*  ENDIF.
