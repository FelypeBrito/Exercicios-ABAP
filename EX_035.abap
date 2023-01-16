*&---------------------------------------------------------------------*
*& Exercicio 035
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_035.

*Declare a work area of 5 constant components. All of them should have different primitive types.

  CONSTANTS: BEGIN OF TY_CONSTANTES,
               UF            TYPE C LENGTH 2 VALUE 'SP',
               NUM_CASA      TYPE I VALUE 113,
               DIA_ALUGUEL   TYPE D VALUE '20230109',
               HORARIO_FINAL TYPE T VALUE '143500',
               STRING        TYPE STRING VALUE `STRING`,
             END OF TY_CONSTANTES.