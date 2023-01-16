*&---------------------------------------------------------------------*
*& Exercicio 014
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_014.

*Declare a table type with the following components of the table SBOOK: CARRID,
*CONNID, FLDATE, BOOKID, CUSTOMID but using CUSTOMID as part of the table key.

  TYPES: BEGIN OF TY_SBOOK2,
           CARRID   TYPE SBOOK-CARRID,
           CONNID   TYPE SBOOK-CONNID,
           FLDATE   TYPE SBOOK-FLDATE,
           BOOKID   TYPE SBOOK-BOOKID,
           CUSTOMID TYPE SBOOK-CUSTOMID,
         END OF TY_SBOOK2.

  TYPES TI_SBOOK TYPE TABLE OF TY_SBOOK2 WITH KEY CUSTOMID.