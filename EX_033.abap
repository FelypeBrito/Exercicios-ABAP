*&---------------------------------------------------------------------*
*& Exercicio 033
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_033.

*Declare a constants which contains the 5 first decimals of Pi.

  TYPES TY_PI TYPE P DECIMALS 5.
  CONSTANTS TI_PI TYPE TY_PI VALUE '3.14159'.

*Solution
  CONSTANTS C_PI TYPE P LENGTH 7 DECIMALS 5 VALUE '3.14159'.