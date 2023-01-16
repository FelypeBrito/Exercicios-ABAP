*&---------------------------------------------------------------------*
*& Exercicio 040
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_040.

*Declare a type which is used in another type, variable, work area, internal table and constant.

  DATA V_REUSED_TIME TYPE T.
  DATA V_LAST_CHANGED_AT LIKE V_REUSED_TIME.
  TYPES TY_LAST_CHANGED_AT LIKE V_REUSED_TIME.
  DATA: BEGIN OF WA_EMPLOYEE,
          NAME            TYPE STRING,
          NEXT_MEETING_AT LIKE V_REUSED_TIME,
        END OF WA_EMPLOYEE.
  DATA: BEGIN OF ITAB_EMPLOYEES OCCURS 0,
          NAME            TYPE STRING,
          NEXT_MEETING_AT LIKE V_REUSED_TIME,
        END OF ITAB_EMPLOYEES.
  CONSTANTS C_LUNCH_TIME LIKE V_REUSED_TIME VALUE '130000'.