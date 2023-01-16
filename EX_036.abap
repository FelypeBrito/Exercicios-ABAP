*&---------------------------------------------------------------------*
*& Exercicio 036
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_036.

*Is it possible to declare an internal table of constants?
*Answer:
*No. No initial value can be specified for internal tables and references

  TYPES TY_INTEGER TYPE I.
  TYPES TY_INTEGERS TYPE TABLE OF TY_INTEGER.
  "CONSTANTS ITAB_INTEGERS TYPE TY_INTEGERS VALUE 1. " Syntax error