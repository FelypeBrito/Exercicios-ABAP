*&---------------------------------------------------------------------*
*& Exercicio 027
*&---------------------------------------------------------------------*


REPORT ZPR_EXERC_FB_027.

*Declare an internal table with fields of the table SBOOK CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.

  TYPES: BEGIN OF LS_SBOOK2,
           CARRID   TYPE SBOOK-CARRID,
           CONNID   TYPE SBOOK-CONNID,
           FLDATE   TYPE SBOOK-FLDATE,
           BOOKID   TYPE SBOOK-BOOKID,
           CUSTOMID TYPE SBOOK-CUSTOMID,
         END OF LS_SBOOK2.

  TYPES TY_ITAB_SBOOK TYPE TABLE OF LS_SBOOK2 WITH KEY   CARRID CONNID FLDATE BOOKID.

  DATA TI_SBOOK2 TYPE TABLE OF LS_SBOOK2.
