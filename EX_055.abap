*&---------------------------------------------------------------------*
*& Exercicio 055
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_055.


*Write an executable program that has a routine that takes two numbers and writes the result
*of the operation [higher_number / lower_number] if the numbers are different. If they are equal,
*write the result of the operation [number ^ 2].

DATA: GV_CALCULO TYPE P DECIMALS 2.


START-OF-SELECTION.


  PERFORM ZF_CALCULO USING 2 5  CHANGING GV_CALCULO.
  WRITE: / 'Exercicio 055'.
  WRITE: / 'Resultado: ', GV_CALCULO.



FORM ZF_CALCULO
  USING
        LV_A  TYPE F
        LV_B  TYPE F
  CHANGING
      LV_CALCULO TYPE P.

  IF LV_A <> LV_B.

    IF LV_A >= LV_B.

      LV_CALCULO = LV_A / LV_B.

    ELSE.

      LV_CALCULO =  LV_B / LV_A .

    ENDIF.

  ELSE.

    LV_CALCULO = LV_A ** 2.

  ENDIF.

ENDFORM.