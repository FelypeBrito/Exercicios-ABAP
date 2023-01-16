*&---------------------------------------------------------------------*
*& Exercicio 08
*&---------------------------------------------------------------------*


REPORT ZPR_EXERC_FB_008.

*Declare a structure type with the following components of the global structure SFLIGHT:
*CARRID, CONNID, FLDATE, PRICE, CURRENCY, PLANETYPE, SEATSMAX and SEATSOCC.

TYPES: BEGIN OF TY_SFLIGHT,
         CARRID    TYPE SFLIGHT-CARRID,
         CONNID    TYPE SFLIGHT-CONNID,
         FLDATE    TYPE SFLIGHT-PRICE,
         CURRENCY  TYPE SFLIGHT-CURRENCY,
         PLANETYPE TYPE SFLIGHT-PLANETYPE,
         SEATSMAX  TYPE SFLIGHT-SEATSMAX,
         SEATSOCC  TYPE SFLIGHT-SEATSOCC,
       END OF TY_SFLIGHT.
