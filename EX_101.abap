*&---------------------------------------------------------------------*
*&  Exercicio 101
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_101.


*Create a program with one select-options representing an executable program name (also
*known as report). The program should execute all programs entered in the select-options one-byone. Keep in mind that after running a program, the execution should return back to the original
*program

  DATA lv_PROG TYPE C LENGTH 30.
  SELECT-OPTIONS SO_PROG FOR LV_PROG NO INTERVALS.

START-OF-SELECTION.

  LOOP AT SO_PROG.

    SUBMIT (SO_PROG-LOW) VIA SELECTION-SCREEN AND RETURN.

  ENDLOOP.