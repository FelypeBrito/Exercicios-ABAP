*&---------------------------------------------------------------------*
*& Exercicio 025
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_025.

*Declare a structure with fields of the table SFLIGHT carrid, CONNID, FLDATE, PRICE,CURRENCY, PLANETYPE, and SEATSMAX SEATSOCC.

  DATA: BEGIN OF ALGUNS_CAMPOS_DE_SFLIGHT,
          CONNID    TYPE SFLIGHT-CONNID,
          FLDATE    TYPE SFLIGHT-FLDATE,
          PRICE     TYPE SFLIGHT-PRICE,
          CURRENCY  TYPE SFLIGHT-CURRENCY,
          PLANETYPE TYPE SFLIGHT-PLANETYPE,
          SEATSMAX  TYPE SFLIGHT-SEATSMAX,
          SEATSOCC  TYPE SFLIGHT-SEATSOCC,
        END OF ALGUNS_CAMPOS_DE_SFLIGHT.