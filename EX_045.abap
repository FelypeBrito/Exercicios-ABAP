*&---------------------------------------------------------------------*
*& Exercicio 045
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_045.


  DATA: LV_palavra1 TYPE STRING VALUE 'O mês',
        LV_palavra2 TYPE STRING VALUE  'é maravilhoso!',
        LV_texto2   TYPE STRING.

  CONCATENATE LV_PALAVRA1 SY-DATUM+4(2) LV_PALAVRA2 INTO LV_TEXTO2 SEPARATED BY '-'.
  WRITE / 'Exercicio 045'.
  WRITE / LV_TEXTO2.