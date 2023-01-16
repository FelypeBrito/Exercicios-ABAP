*&---------------------------------------------------------------------*
*& Exercicio 052
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_052.


*For this exercise, you should Read the help from command FORM completely. Then, write
*an executable program that has a routine that receives four global variables and change their value.
*Each variable will be received in a different way: 2 of them using the addition USING and the other
*2 using the addition CHANGING from the FORM command. For each pair use and omit the adding
*VALUE. Print the contents of all global variables before the routine is called, at the beginning of the
*routine, at the end of the routine (after all values are changed) and after the PERFORM statement.
*See how the contents of variables behave using the debugger.

  DATA: GV_A TYPE I VALUE 1,
        GV_B TYPE I VALUE 2,
        GV_C TYPE I VALUE 3,
        GV_D TYPE I VALUE 4.

START-OF-SELECTION.

  WRITE / 'Exercicio 052'.
  WRITE / 'Antes form'.
  WRITE: / 'gv_a: ', GV_A. NEW-LINE.
  WRITE: / 'gv_b: ', GV_B. NEW-LINE.
  WRITE: / 'gv_c: ', GV_C. NEW-LINE.
  WRITE: / 'gv_d: ', GV_D. NEW-LINE.

  PERFORM ZF_EX052
     USING
     GV_A
     GV_B
     CHANGING
     GV_C
     GV_D.

  WRITE / 'Depois Form'. NEW-LINE.
  WRITE: / 'gv_a: ', GV_A. NEW-LINE.
  WRITE: / 'gv_b: ', GV_B. NEW-LINE.
  WRITE: / 'gv_c: ', GV_C. NEW-LINE.
  WRITE: / 'gv_d: ', GV_D. NEW-LINE.


*&---------------------------------------------------------------------*
*& Form form_parameters
*&---------------------------------------------------------------------*
FORM ZF_EX052
  USING US_A TYPE I
        VALUE(USV_B) TYPE I
  CHANGING CH_C TYPE I
    VALUE(CHV_D) TYPE I.

  WRITE 'Dentro do Form'. NEW-LINE.
  WRITE: 'us_a: ', US_A. NEW-LINE.
  WRITE: 'usv_b: ', USV_B. NEW-LINE.
  WRITE: 'ch_c: ', CH_C. NEW-LINE.
  WRITE: 'chv_d: ', CHV_D. NEW-LINE.

  US_A = US_A + 10.
  USV_B = USV_B + 10.
  CH_C = CH_C + 10.
  CHV_D = CHV_D + 10.

  WRITE 'Depois da bugança do form'. NEW-LINE.
  WRITE: 'us_a: ', US_A. NEW-LINE.
  WRITE: 'usv_b: ', USV_B. NEW-LINE.
  WRITE: 'ch_c: ', CH_C. NEW-LINE.
  WRITE: 'chv_d: ', CHV_D. NEW-LINE.


  WRITE: / 'gv_a: ', GV_A. NEW-LINE.
  WRITE: / 'gv_b: ', GV_B. NEW-LINE.
  WRITE: / 'gv_c: ', GV_C. NEW-LINE.
  WRITE: / 'gv_d: ', GV_D. NEW-LINE.

ENDFORM.
