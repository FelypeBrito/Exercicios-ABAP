*&---------------------------------------------------------------------*
*& Exercicio 039
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_039.

*Declare a type which is used in another type, variable, work area, internal table and constant.


  TYPES TY_DATA_INICIAL TYPE D.
  TYPES TY_DATA_FINAL   TYPE TY_DATA_INICIAL.

  DATA LV_DATA_INICIAL TYPE TY_DATA_INICIAL.
  DATA LV_DATA_FINAL    TYPE TY_DATA_FINAL.

  DATA: BEGIN OF WA_PROVA,
          NOME        TYPE STRING,
          DATA_INICIL TYPE TY_DATA_INICIAL,
          DATA_FINAL  TYPE TY_DATA_FINAL,
        END OF WA_PROVA.

  DATA: IT_PROVA LIKE TABLE OF WA_PROVA.

  CONSTANTS LC_DATA_INICIAL TYPE TY_DATA_INICIAL VALUE '20231223'.