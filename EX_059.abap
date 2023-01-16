*&---------------------------------------------------------------------*
*& Exercicio 059
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_059.

*Write an executable program which has a routine that receives a work area with 3 char
*components and 3 numeric components. The routine should clear some component values
*according to the following rules:
*1. Clear char components only if the sum of the numeric components is odd (ignoring possible
*decimal places)
*2. Clear numeric components only if the sum of vowels in the three char components is even
*(ignoring lower/upper case)

TYPES: BEGIN OF TY_EX59,
         GV_NUM1 TYPE I,
         GV_NUM2 TYPE F,
         GV_NUM3 TYPE P DECIMALS 2,
         GV_CAR1 TYPE C LENGTH 10,
         GV_CAR2 TYPE STRING,
         GV_CAR3 TYPE T,
       END OF TY_EX59.

DATA WA_EX59 TYPE TY_EX59.

START-OF-SELECTION.

  WA_EX59-GV_NUM1 = 7.
  WA_EX59-GV_NUM2 = 6.
  WA_EX59-GV_NUM3 = '10.58'.
  WA_EX59-GV_CAR1 = 'Felype'.
  WA_EX59-GV_CAR2 = 'Gabriel'.
  WA_EX59-GV_CAR3 = '120000'.

  PERFORM ZF_EX59 CHANGING WA_EX59.



FORM ZF_EX59 CHANGING WA_TESTE TYPE TY_EX59.

  DATA: LV_SOMA_NUM     TYPE I,
        LV_SOMA_CHAR    TYPE I,
        LV_VOGAIS_COUNT TYPE I.

  LV_SOMA_NUM = WA_TESTE-GV_NUM1 + WA_TESTE-GV_NUM2 + WA_TESTE-GV_NUM3 .

  IF ( LV_SOMA_NUM MOD 2 ) = 0.

    WA_TESTE-GV_CAR1 = SPACE.
    WA_TESTE-GV_CAR2 = SPACE.
    WA_TESTE-GV_CAR3 = SPACE.

  ENDIF.

  TRANSLATE WA_TESTE-GV_CAR1 TO UPPER CASE.
  TRANSLATE WA_TESTE-GV_CAR2 TO UPPER CASE.
  TRANSLATE WA_TESTE-GV_CAR3 TO UPPER CASE.

  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U' IN WA_TESTE-GV_CAR1 MATCH COUNT
   LV_VOGAIS_COUNT.

  LV_SOMA_CHAR =  LV_SOMA_CHAR + LV_VOGAIS_COUNT.

  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U' IN WA_TESTE-GV_CAR2 MATCH COUNT
   LV_VOGAIS_COUNT.

  LV_SOMA_CHAR =  LV_SOMA_CHAR + LV_VOGAIS_COUNT.

  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U' IN WA_TESTE-GV_CAR3 MATCH COUNT
  LV_VOGAIS_COUNT.

  LV_SOMA_CHAR =  LV_SOMA_CHAR + LV_VOGAIS_COUNT.

  IF ( LV_SOMA_CHAR MOD 2 ) = 0.

    WA_TESTE-GV_NUM1 = SPACE.
    WA_TESTE-GV_NUM2 = SPACE.
    WA_TESTE-GV_NUM3 = SPACE.

  ENDIF.

ENDFORM.