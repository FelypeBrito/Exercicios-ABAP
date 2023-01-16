*&---------------------------------------------------------------------*
*& Exercicio 006
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_006.

*Declare a structure type with 5 fields, each field with the same types from exercises 1 to 5.

TYPES AUX     TYPE C LENGTH 10 .
DATA INT      TYPE i           .
TYPES number  TYPE n LENGTH 7  .
TYPES DATA    TYPE d           .
TYPES TIME    TYPE t           .


TYPES: BEGIN OF TY_FIELDS,
         NOME  TYPE AUX         ,
         IDADE LIKE INT         ,
         VALOR TYPE number      ,
         DATA  TYPE DATA        ,
         HORA  TYPE TIME        ,
       END OF TY_FIELDS.