*&---------------------------------------------------------------------*
*& Exercicio 067
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_067.

*Write an executable program with two parameters which represents a base and exponent.
*Print the result of exponentiation. As both parameters are required for the operation they should be
*mandatory

PARAMETERS P_BASE TYPE P LENGTH 6 DECIMALS 5 OBLIGATORY.
PARAMETERS P_EXP  TYPE I OBLIGATORY.

DATA LV_CAL TYPE P DECIMALS 3.

START-OF-SELECTION.
  LV_CAL = P_BASE ** P_EXP.

  WRITE: 'Exercício 67'.

  WRITE: / 'Resultado: ', LV_CAL  EXPONENT 0.