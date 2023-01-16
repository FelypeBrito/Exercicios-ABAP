*&---------------------------------------------------------------------*
*& Exercicio 026
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_026.

* Declare a structure with all fields of the table SBOOK and the field TELEPHONE from SCUSTOM table.

  DATA: BEGIN OF SBOOK_WITH_PHONE.
          INCLUDE STRUCTURE SBOOK.
  DATA PHONE TYPE SCUSTOM-TELEPHONE.
  DATA END OF SBOOK_WITH_PHONE.