*&---------------------------------------------------------------------*
*&  Exercicio 80
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_08.

*Declare three parameters as checkboxes. The first one should always be checked once the
*program is started. Moreover, if the current day is between 1 and 10, the other two checkboxes
*should be checked as well once the program is started.

PARAMETERS CB_1 AS CHECKBOX DEFAULT 'X'.
PARAMETERS CB_2 AS CHECKBOX.
PARAMETERS CB_3 AS CHECKBOX.

INITIALIZATION.

  IF SY-DATUM+6(2) BETWEEN 1 AND 10.

    CB_2 = 'X'.
    CB_3 = 'X'.

  ENDIF.