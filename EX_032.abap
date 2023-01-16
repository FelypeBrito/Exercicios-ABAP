*&---------------------------------------------------------------------*
*& Exercicio 032
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_032.

*Declare two constants which contain the values 'X' (true) and ' ' (false).
*Note: This is a common practice as ABAP does not contain a boolean primitive type.

  CONSTANTS VERDADEIRO TYPE C VALUE 'X'.
  CONSTANTS FALSO      TYPE C VALUE ' '.

*Solution
  TYPES TY_BOOLEAN  TYPE C.
  CONSTANTS C_TRUE  TYPE TY_BOOLEAN VALUE 'X'.
  CONSTANTS C_FALSE TYPE TY_BOOLEAN VALUE SPACE.