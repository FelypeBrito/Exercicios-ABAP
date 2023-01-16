*&---------------------------------------------------------------------*
*& Exercicio 013
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_013.

*Declare a table type using the structure type created in exercise 8.

  TYPES: BEGIN OF TY_SFLIGHT2,
           CARRID    TYPE SFLIGHT-CARRID,
           CONNID    TYPE SFLIGHT-CONNID,
           FLDATE    TYPE SFLIGHT-PRICE,
           CURRENCY  TYPE SFLIGHT-CURRENCY,
           PLANETYPE TYPE SFLIGHT-PLANETYPE,
           SEATSMAX  TYPE SFLIGHT-SEATSMAX,
           SEATSOCC  TYPE SFLIGHT-SEATSOCC,
         END OF TY_SFLIGHT2.

  TYPES TABLE2_SFLIGHT TYPE TABLE OF TY_SFLIGHT2.

*Solution
  TYPES TABLE_TYPE_SHORT_SFLIGHT TYPE TABLE OF TY_SFLIGHT2 WITH KEY
  CARRID CONNID FLDATE.