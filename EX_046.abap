*&---------------------------------------------------------------------*
*& Exercicio 046
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_046.


*Write an executable program that reads the current system date and write it in your language
*in text format.


  DATA: LV_DIA TYPE STRING,
        LV_MES TYPE STRING,
        LV_ANO TYPE STRING.

  CASE SY-DATUM+4(2).
    WHEN '01'.
      LV_MES = 'Janeiro'.
    WHEN '02'.
      LV_MES = 'Fevereiro'.
    WHEN '03'.
      LV_MES = 'Março'.
    WHEN '04'.
      LV_MES = 'Abril'.
    WHEN '05'.
      LV_MES = 'Maio'.
    WHEN '06'.
      LV_MES = 'Junho'.
    WHEN '07'.
      LV_MES = 'Julho'.
    WHEN '08'.
      LV_MES = 'Agosto'.
    WHEN '09'.
      LV_MES = 'Setembro'.
    WHEN '10'.
      LV_MES = 'Outubro'.
    WHEN '11'.
      LV_MES = 'Novembro'.
    WHEN '12'.
      LV_MES = 'Dezembro'.
  ENDCASE.


  CASE SY-DATUM+6(2).
    WHEN '01'.
      LV_DIA = 'Primeiro'.
    WHEN '02'.
      LV_DIA = 'Dia dois'.
    WHEN '03'.
      LV_DIA = 'Dia três'.
    WHEN '04'.
      LV_DIA = 'Dia quato'.
    WHEN '05'.
      LV_DIA = 'Dia cinco'.
    WHEN '06'.
      LV_DIA = 'Dia seis'.
    WHEN '07'.
      LV_DIA = 'Dia sete'.
    WHEN '08'.
      LV_DIA = 'Dia oito'.
    WHEN '09'.
      LV_DIA = 'Dia nove'.
    WHEN '10'.
      LV_DIA = 'Dia dez'.
    WHEN '11'.
      LV_DIA = 'Dia onze'.
    WHEN '12'.
      LV_DIA = 'Dia doze'.
    WHEN '13'.
      LV_DIA = 'Dia treze'.
    WHEN '14'.
      LV_DIA = 'Dia catorze'.
    WHEN '15'.
      LV_DIA = 'Dia quize'.
    WHEN '16'.
      LV_DIA = 'Dia desesseis'.
    WHEN '17'.
      LV_DIA = 'Dia dessesete'.
    WHEN '18'.
      LV_DIA = 'Dia dezoito'.
    WHEN '19'.
      LV_DIA = 'Dia dezenove'.
    WHEN '20'.
      LV_DIA = 'Dia vinte'.
    WHEN '21'.
      LV_DIA = 'Dia vinte um'.
    WHEN '22'.
      LV_DIA = 'Dia vinte dois'.
    WHEN '23'.
      LV_DIA = 'Dia vinte três'.
    WHEN '24'.
      LV_DIA = 'Dia vinte quatro'.
    WHEN '25'.
      LV_DIA = 'Dia vinte cinco'.
    WHEN '26'.
      LV_DIA = 'Dia vinte seis'.
    WHEN '27'.
      LV_DIA = 'Dia vinte sete'.
    WHEN '28'.
      LV_DIA = 'Dia vinte oito'.
    WHEN '29'.
      LV_DIA = 'Dia vinte nove'.
    WHEN '30'.
      LV_DIA = 'Dia trinta'.
    WHEN '31'.
      LV_DIA = 'Dia trinta um'.
  ENDCASE.

  LV_ANO = SY-DATUM(4).

  WRITE / 'Exercicio 046'.
  WRITE: / LV_DIA,'de', LV_MES,'de', LV_ANO. NEW-LINE.