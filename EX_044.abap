*&---------------------------------------------------------------------*
*& Exercicio 044
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_044.


*Write an executable program that concatenates two words and write the result.
  DATA: LV_NOME      TYPE STRING VALUE 'Felype',
        LV_SOBRENOME TYPE STRING VALUE 'Brito',
        LV_TEXTO     TYPE STRING.


  CONCATENATE LV_NOME LV_SOBRENOME INTO LV_TEXTO SEPARATED BY SPACE.
  WRITE / 'Exercicio 044'.
  WRITE / LV_TEXTO.