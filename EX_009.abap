*&---------------------------------------------------------------------*
*& Exercicio 09
*&---------------------------------------------------------------------*


REPORT ZPR_EXERC_FB_009.

*Declare a structure type with the following components of the global structure SBOOK:
*CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.

TYPES: BEGIN OF TY_SBOOK,
         CARRID   TYPE SBOOK-CARRID,
         CONNID   TYPE SBOOK-CONNID,
         FLDATE   TYPE SBOOK-FLDATE,
         BOOKID   TYPE SBOOK-BOOKID,
         CUSTOMID TYPE SBOOK-CUSTOMID,
       END OF TY_SBOOK.