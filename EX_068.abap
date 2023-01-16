*&---------------------------------------------------------------------*
*& Exercicio 068
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_068.

*Write an executable program with two parameters (a string and a number) The number
*should be accepted only if it's less or equal to 25. The program should print the string as many times
*as the value of the numeric parameter. The output should be as following
*String = "ABAPers are not crazy people." Number = 21.
*Line [1]: A
*Line [2]: AB
*Line [3]: ABA
*Line [4]: ABAP
*Line [5]: ABAPe
*(...)
*Line [21]: ABAPers are not crazy

PARAMETERS P_STRING TYPE STRING OBLIGATORY.
PARAMETERS P_VEZES TYPE I OBLIGATORY.

"PAI validar uma entrada

AT SELECTION-SCREEN ON P_VEZES.

  IF P_VEZES > 25.
    MESSAGE 'P_VEZES tem que ser menor ou igual a 25' TYPE 'E'.
  ENDIF.


START-OF-SELECTION.

  DATA LV_CONTAGEM TYPE I VALUE 1.

  WRITE: 'Exercício 68'.

  WHILE LV_CONTAGEM <= P_VEZES.

    WRITE: /  'Line [', LV_CONTAGEM , ']', P_STRING(LV_CONTAGEM).

    LV_CONTAGEM = LV_CONTAGEM + 1.

  ENDWHILE.