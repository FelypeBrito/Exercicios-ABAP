*&---------------------------------------------------------------------*
*&  Exercicio 100
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_100.


*Create a program with one parameter representing an executable program name (also known
*as report). The program should execute the program entered in the parameter.

  PARAMETERS P_PROG TYPE C LENGTH 30 DEFAULT 'ZPR_EXERC_FB'.

START-OF-SELECTION.

  SUBMIT (P_PROG) VIA SELECTION-SCREEN AND RETURN.