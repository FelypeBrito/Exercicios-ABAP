*&---------------------------------------------------------------------*
*& Exercicio 011
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_011.

*  Declare a table type of integers.

  TYPES TABLE_INTERGER TYPE TABLE OF I.

  DATA NUMBERS_TABLE TYPE TABLE_INTERGER.

*Solution
  TYPES TABLE_TYPE_WITH_NUMBER TYPE TABLE OF I.
  DATA ODD_NUMBERS TYPE TABLE_TYPE_WITH_NUMBER.
  DATA EVEN_NUMBERS TYPE TABLE_TYPE_WITH_NUMBER.

START-OF-SELECTION.
  APPEND: 1 TO ODD_NUMBERS,
          3 TO ODD_NUMBERS,
          5 TO ODD_NUMBERS,
          7 TO ODD_NUMBERS,
          9 TO ODD_NUMBERS.

  APPEND: 2 TO EVEN_NUMBERS,
          4 TO EVEN_NUMBERS,
          6 TO EVEN_NUMBERS,
          8 TO EVEN_NUMBERS,
          10 TO EVEN_NUMBERS.