*&---------------------------------------------------------------------*
*& Exercicio 056
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_056.


*Write an executable program that does NOT have a routine. The program should include a
*work area with 5 fields of different types or more. Then, it must be populated and its fields should
*be printed one per line, separated by one horizontal line. After testing your program, change the
*output separating each field by two lines. During this process, refactor your code to include a
*routine which handle the separation between each line.

DATA: BEGIN OF WA_EX056,
        NOME       TYPE STRING,
        NASCIMENTO TYPE D,
        HORAS      TYPE T,
        IDADE      TYPE I,
        FILHOS     TYPE C,
      END OF WA_EX056.

START-OF-SELECTION.

  WRITE: / 'Exercicio 056'.
  WA_EX056-NOME = 'Felype'.
  WA_EX056-NASCIMENTO = '20001223'.
  WA_EX056-HORAS = '162500'.
  WA_EX056-IDADE = 22.
  WA_EX056-FILHOS = SPACE.

*  WRITE /  WA_EX056-NOME.
*  ULINE.
*  WRITE /  WA_EX056-NASCIMENTO.
*  ULINE.
*  WRITE /  WA_EX056-IDADE.
*  ULINE.
*  WRITE /  WA_EX056-HORAS.
*  ULINE.
*  WRITE /  WA_EX056-FILHOS.
*  ULINE.

  WRITE /  WA_EX056-NOME.
  PERFORM ZF_SEPARADOR.
  WRITE /  WA_EX056-NASCIMENTO.
  PERFORM ZF_SEPARADOR.
  WRITE /  WA_EX056-IDADE.
  PERFORM ZF_SEPARADOR.
  WRITE /  WA_EX056-HORAS.
  PERFORM ZF_SEPARADOR.
  WRITE /  WA_EX056-FILHOS.
  PERFORM ZF_SEPARADOR.


FORM ZF_SEPARADOR.

  ULINE.

ENDFORM.