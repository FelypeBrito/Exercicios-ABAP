*&---------------------------------------------------------------------*
*&  Exercicio 74
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_074.

*Contains a select-options for numeric values and print all search criteria separated ",".


DATA V_NUMBER TYPE I.
SELECT-OPTIONS S_NUMBER FOR V_NUMBER NO-EXTENSION.

START-OF-SELECTION.


  LOOP AT S_NUMBER.
    IF S_NUMBER-SIGN = 'I'.
      WRITE: 'Include'.
    ELSE.
      WRITE: 'Exclude'.
    ENDIF.
    CASE S_NUMBER-OPTION.
      WHEN 'EQ'.
        WRITE: 'Igual', S_NUMBER-LOW.
      WHEN 'NE'.
        WRITE: 'Não Igual', S_NUMBER-LOW.
      WHEN 'LT'.
        WRITE: 'Menor que', S_NUMBER-LOW.
      WHEN 'LE'.
        WRITE: 'Menor ou Igual a', S_NUMBER-LOW.
      WHEN 'GT'.
        WRITE: 'Maior que', S_NUMBER-LOW.
      WHEN 'GE'.
        WRITE: 'Maior ou Igual a', S_NUMBER-LOW.
      WHEN 'BT'.
        WRITE: 'Entre', S_NUMBER-LOW, ' e', S_NUMBER-HIGH.
      WHEN 'BT'.
        WRITE: 'Não entre', S_NUMBER-LOW, ' e ', S_NUMBER-HIGH.
      WHEN 'CP'. " Patterns are used in char and string select-options
        WRITE: 'Contém padrão', S_NUMBER-LOW.
      WHEN 'NP'.
        WRITE: 'Não contém padrão', S_NUMBER-LOW.
    ENDCASE.
    NEW-LINE.
  ENDLOOP.