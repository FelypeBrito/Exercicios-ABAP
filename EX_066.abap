*&---------------------------------------------------------------------*
*& Exercicio 066
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_066.

*Write an executable program with two parameters types as integers. The first represents a
*number to be printed and the second represents the length of the number to be printed. Place zeros
*to the left if necessary. Example:
*• p_number = 15 p_length = 2. Output = 15
*• p_number = 15 p_length = 6. Output = 000015
*• p_number = 2014 p_length = 2. Output = 20
*• p_number = 123456789 p_length = 10. Output = 0123456789
*• p_number = 123456789 p_length = 4. Output = 1234

PARAMETERS P_NUM TYPE I.
PARAMETERS P_TAM TYPE I.

DATA: LV_NUM_STRING   TYPE STRING,
      LV_TAM          TYPE I,
      LV_STRING_ZEROS TYPE STRING.


START-OF-SELECTION.

  LV_NUM_STRING = P_NUM.
  CONDENSE LV_NUM_STRING NO-GAPS.
  LV_TAM = STRLEN( LV_NUM_STRING ).

  WRITE: / 'Exercicio 66'.
  IF LV_TAM > P_TAM.

    WRITE: / 'Número: ', LV_NUM_STRING(P_TAM).


  ELSE.
    DATA: LV_TAM_ZEROS TYPE I,
          LV_ZEROS     TYPE STRING.

    LV_TAM_ZEROS = LV_TAM - P_TAM.

    DO LV_TAM_ZEROS TIMES.

      CONCATENATE LV_ZEROS '0' INTO LV_ZEROS.

    ENDDO.

    CONCATENATE lv_zeros lv_num_string into LV_STRING_ZEROS.
    write: / 'Número: ',LV_STRING_ZEROS.

  ENDIF.