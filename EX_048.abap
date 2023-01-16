*&---------------------------------------------------------------------*
*& Exercicio 048
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_048.


*Write an executable program that counts how many vowels are in the name of the user
*running the program and print the result

  DATA: LV_VOGAIS_COUNT  TYPE I,
        LV_VOGAIS_TOTAIS TYPE I.

  DATA LV_USER  LIKE SY-UNAME.

START-OF-SELECTION.

  LV_USER = SY-UNAME.
  TRANSLATE LV_USER TO UPPER CASE.

  FIND ALL OCCURRENCES OF 'A' IN LV_USER MATCH COUNT LV_VOGAIS_COUNT.
  LV_VOGAIS_TOTAIS = LV_VOGAIS_TOTAIS + LV_VOGAIS_COUNT.
  FIND ALL OCCURRENCES OF 'E' IN LV_USER MATCH COUNT LV_VOGAIS_COUNT.
  LV_VOGAIS_TOTAIS = LV_VOGAIS_TOTAIS + LV_VOGAIS_COUNT.
  FIND ALL OCCURRENCES OF 'I' IN LV_USER MATCH COUNT LV_VOGAIS_COUNT.
  LV_VOGAIS_TOTAIS = LV_VOGAIS_TOTAIS + LV_VOGAIS_COUNT.
  FIND ALL OCCURRENCES OF 'O' IN LV_USER MATCH COUNT LV_VOGAIS_COUNT.
  LV_VOGAIS_TOTAIS = LV_VOGAIS_TOTAIS + LV_VOGAIS_COUNT.
  FIND ALL OCCURRENCES OF 'U' IN LV_USER MATCH COUNT LV_VOGAIS_COUNT.
  LV_VOGAIS_TOTAIS = LV_VOGAIS_TOTAIS + LV_VOGAIS_COUNT.

  WRITE / 'Exercicio 048'.
  WRITE / LV_VOGAIS_TOTAIS.
*Solution
  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U' IN LV_USER MATCH COUNT
 LV_VOGAIS_COUNT.

  WRITE / LV_VOGAIS_TOTAIS.