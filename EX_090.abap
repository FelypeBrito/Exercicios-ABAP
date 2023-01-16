*&---------------------------------------------------------------------*
*&  Exercicio 90
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_090.


*Declare a selection screen with 8 parameters and 3 select-options of your choice. Execute
*your program and save a variant so you refer to your selection any time you want

  SELECTION-SCREEN:BEGIN OF BLOCK RBD WITH FRAME TITLE V_PARAM.
    PARAMETERS P_NUM1   TYPE I.
    PARAMETERS P_STR    TYPE STRING.
    PARAMETERS P_CARAC  TYPE C LENGTH 5.
    PARAMETERS P_DEC    TYPE P DECIMALS 2.
    PARAMETERS P_NOME   TYPE C LENGTH 20.
    PARAMETERS P_CITY   TYPE C LENGTH 20.
    PARAMETERS P_AGE    TYPE I.
    PARAMETERS P_EC     TYPE C.

  SELECTION-SCREEN: END OF BLOCK RBD.

  DATA: LV_NUM  TYPE I,
        LV_c    TYPE C,
        LV_DATA TYPE D.

  SELECTION-SCREEN:BEGIN OF BLOCK PINK WITH FRAME TITLE V_SELECT.

    SELECT-OPTIONS SO_ID    FOR LV_NUM  NO-EXTENSION.
    SELECT-OPTIONS SO_C     FOR LV_c    NO-EXTENSION.
    SELECT-OPTIONS SO_DAY   FOR LV_DATA NO-EXTENSION.

  SELECTION-SCREEN: END OF BLOCK PINK.

INITIALIZATION.

  V_PARAM = 'Parameters'.
  V_SELECT = 'Select-Option'.

START-OF-SELECTION.


  WRITE: / P_NUM1.
  WRITE: / P_STR.
  WRITE: / P_CARAC.
  WRITE: / P_DEC.
  WRITE: / P_NOME.
  WRITE: / P_CITY.
  WRITE: /  P_AGE.
  WRITE: / P_EC.

  WRITE: / SO_ID-LOW.
  WRITE: / SO_C-LOW.
  WRITE: / SO_DAY-LOW.
  WRITE: / SO_ID-HIGH.
  WRITE: / SO_C-HIGH.
  WRITE: / SO_DAY-HIGH.