*&---------------------------------------------------------------------*
*& Exercicio 020
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_020.

*Declare a packed number variable with 7 decimal places.

  DATA DECIMAL TYPE P LENGTH 10 DECIMALS 7.

*Solution
  DECIMAL = '123456789.987654321'.
  WRITE / DECIMAL.