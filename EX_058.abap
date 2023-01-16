*&---------------------------------------------------------------------*
*& Exercicio 058
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_058.

*Write an executable program with a routine that receives a work area with at least 4
*components. All components can only be declared using numeric and different primitive types. Your
*routine should sum the values from all components and print the result.

TYPES: BEGIN OF TY_EX58,
         GV_NUM1 TYPE I,
         GV_NUM2 TYPE F,
         GV_NUM3 TYPE P DECIMALS 2,
         GV_NUM4 TYPE N,
       END OF TY_EX58.

DATA WA_EX58 TYPE TY_EX58.

START-OF-SELECTION.

  WA_EX58-GV_NUM1 = 3.
  WA_EX58-GV_NUM2 = 6.
  WA_EX58-GV_NUM3 = '10.58'.
  WA_EX58-GV_NUM4 = 1.


  PERFORM ZF_EX58 CHANGING WA_EX58.


FORM ZF_EX58 CHANGING WA_TESTE TYPE TY_EX58.

  DATA LV_SOMA TYPE P LENGTH 5 DECIMALS 2.


  LV_SOMA = WA_TESTE-GV_NUM1 +  WA_TESTE-GV_NUM2 + WA_TESTE-GV_NUM3 + WA_TESTE-GV_NUM4.

  WRITE: / 'Exercicio 58'.
  WRITE: / 'Soma de todos os números primitivos é: ', LV_SOMA.



ENDFORM.