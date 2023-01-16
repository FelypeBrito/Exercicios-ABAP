*&---------------------------------------------------------------------*
*&  Exercicio 82
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_082.


*Declare three radio buttons and two input fields. If the first radio button is selected, both
*input fields should be displayed and ready for input. If the second one is chosen, the first input field
*should be mandatory and the second one should blocked for input. If the last radio button is chosen,
*both input fields should not be displayed in the screen.


PARAMETERS: P_01 RADIOBUTTON GROUP RAD1 USER-COMMAND ACTION.
PARAMETERS: P_02 RADIOBUTTON GROUP RAD1.
PARAMETERS: P_03 RADIOBUTTON GROUP RAD1.

PARAMETERS: P_INPUT1 TYPE STRING.
PARAMETERS: P_INPUT2 TYPE STRING.


DATA LV_ACTION LIKE SY-UCOMM.

AT SELECTION-SCREEN.

  LV_ACTION = SY-UCOMM.

AT SELECTION-SCREEN OUTPUT.
  IF LV_ACTION = 'ACTION'.

    CASE 'X'.
      WHEN P_01.
        LOOP AT SCREEN.
          IF SCREEN-NAME = 'P_INPUT1' OR SCREEN-NAME = 'P_INPUT2'.
            SCREEN-INPUT = 1.
            MODIFY SCREEN.
          ENDIF.
        ENDLOOP.



      WHEN P_02.

        LOOP AT SCREEN.
          IF SCREEN-NAME = 'P_INPUT1'.
            SCREEN-REQUIRED = 1.
            MODIFY SCREEN.
          ENDIF.

          IF SCREEN-NAME = 'P_INPUT2'.
            SCREEN-INPUT = 0.
            MODIFY SCREEN.
          ENDIF.

        ENDLOOP.


      WHEN P_03 .

        LOOP AT SCREEN.
          IF SCREEN-NAME = 'P_INPUT1' or SCREEN-NAME = 'P_INPUT2'.
            SCREEN-INPUT = 0.
            SCREEN-INVISIBLE = 1.
            MODIFY SCREEN.
          ENDIF.
        ENDLOOP.

    ENDCASE.

  ENDIF.