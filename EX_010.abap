*&---------------------------------------------------------------------*
*& Exercicio 10
*&---------------------------------------------------------------------*


REPORT ZPR_EXERC_FB_010.

*Declare a structure containing all the fields mentioned in exercises 8 and 9. Check it using
*the ABAP Debugger

TYPES: BEGIN OF TY_EX10,
         CARRID_SFLIGHT TYPE SFLIGHT-CARRID,
         CONNID_SFLIGHT TYPE SFLIGHT-CONNID,
         FLDATE_SFLIGHT TYPE SFLIGHT-PRICE,
         CURRENCY       TYPE SFLIGHT-CURRENCY,
         PLANETYPE      TYPE SFLIGHT-PLANETYPE,
         SEATSMAX       TYPE SFLIGHT-SEATSMAX,
         SEATSOCC       TYPE SFLIGHT-SEATSOCC,
         CARRID_SBOOK   TYPE SBOOK-CARRID,
         CONNID_SBOOK   TYPE SBOOK-CONNID,
         FLDATE_SBOOK   TYPE SBOOK-FLDATE,
         BOOKID         TYPE SBOOK-BOOKID,
         CUSTOMID       TYPE SBOOK-CUSTOMID,
       END OF TY_EX10.

*Solution
TYPES: BEGIN OF SOME_COMPONENTS_SFLIGHT_2,
         CARRID    TYPE SFLIGHT-CARRID,
         CONNID    TYPE SFLIGHT-CONNID,
         FLDATE    TYPE SFLIGHT-FLDATE,
         PRICE     TYPE SFLIGHT-PRICE,
         CURRENCY  TYPE SFLIGHT-CURRENCY,
         PLANETYPE TYPE SFLIGHT-PLANETYPE,
         SEATSMAX  TYPE SFLIGHT-SEATSMAX,
         SEATSOCC  TYPE SFLIGHT-SEATSOCC,
       END OF SOME_COMPONENTS_SFLIGHT_2.
TYPES: BEGIN OF FLIGHT_BOOKING,
         CARRID   TYPE SBOOK-CARRID,
         CONNID   TYPE SBOOK-CONNID,
         FLDATE   TYPE SBOOK-FLDATE,
         BOOKID   TYPE SBOOK-BOOKID,
         CUSTOMID TYPE SBOOK-CUSTOMID,
       END OF FLIGHT_BOOKING.
* Note that some_components_sflight_2 and flight_booking have components with THE SAME NAME
* 'carrid', 'connid' and 'fldate'. 2 components cannot have the same name so
* in the structure below we add a suffix for each component originated in the LOCAL
* structure flight_booking
TYPES: BEGIN OF SFLIGHT_SBOOK.
         INCLUDE TYPE SOME_COMPONENTS_SFLIGHT_2.
         INCLUDE TYPE FLIGHT_BOOKING AS BOOK RENAMING WITH SUFFIX _BOOK.
TYPES END OF SFLIGHT_SBOOK.

START-OF-SELECTION. " F8 To Execute
  DATA ONE_RECORD TYPE SFLIGHT_SBOOK.
*  BREAK-POINT. " See one_record using the debugger