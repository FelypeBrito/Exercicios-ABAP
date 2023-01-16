*&---------------------------------------------------------------------*
*& Exercicio 049
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_049.


*Write an executable program that counts a string length and if it's bigger than 2o characteres,
*write 'Too big'. If not, write the string length.

  DATA: LV_STRING  TYPE STRING VALUE 'asd4a5sdasd5asdas6asdas6d',
        LV_TAMANHO TYPE I.

START-OF-SELECTION.

  LV_TAMANHO = STRLEN( LV_STRING ).

  WRITE / 'Exercicio 049'.
  IF LV_TAMANHO > 20.
    WRITE / 'Muito grande!'.

  ELSE.
    WRITE / lV_TAMANHO.

  ENDIF.
