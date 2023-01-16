*&---------------------------------------------------------------------*
*& Exercicio 030
*&---------------------------------------------------------------------*


REPORT ZPR_EXERC_FB_030.

*Declare an internal table with all table fields from SCARR and the field TELEPHONE from table SCUSTOM.

  TYPES: BEGIN OF TY_SCARR_TELEPHONE.
           INCLUDE TYPE SCARR.
  TYPES:   PHONE TYPE SCUSTOM-TELEPHONE,
         END OF TY_SCARR_TELEPHONE,

         TY_ITAB_SCARR_TELEPHONE TYPE SORTED TABLE OF TY_SCARR_TELEPHONE WITH UNIQUE KEY CARRID.

  DATA ITAB TYPE TY_ITAB_SCARR_TELEPHONE.

*  BREAK-POINT.