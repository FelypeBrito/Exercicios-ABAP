*&---------------------------------------------------------------------*
*& Exercicio 051
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_051.


*Write an executable program that contains a routine which prints all usernames in the
*system. (Check table USR04 and its content in transaction SE11, SE16 or SE16N).

  TYPES TY_USUARIOS TYPE TABLE OF USR04-BNAME.

  DATA IT_USUARIOS TYPE TY_USUARIOS.


START-OF-SELECTION.

  SELECT Bname
    FROM USR04
    INTO TABLE IT_USUARIOS.

  WRITE / 'Exercicio 051'.

  LOOP AT IT_USUARIOS INTO DATA(WA_USUARIO).
    WRITE / WA_USUARIO.
    NEW-LINE.
  ENDLOOP.

**Solution
**  TYPES TY_USERS TYPE TABLE OF USR04-BNAME.
**  DATA IT_USERS TYPE TY_USERS.
**
**START-OF-SELECTION.
**  SELECT BNAME
**  FROM USR04
**  INTO TABLE IT_USERS.
**  PERFORM PRINT_USERS USING IT_USERS.
**&---------------------------------------------------------------------*
**& Form print_users
**&---------------------------------------------------------------------*
** Prints all usernames in the system
**----------------------------------------------------------------------*
** -->US_T_USERS usernames
**----------------------------------------------------------------------*
**FORM PRINT_USERS USING US_T_USERS TYPE TY_USERS.
**  DATA LWA_USER TYPE LINE OF TY_USERS.
**  LOOP AT US_T_USERS INTO LWA_USER.
**    WRITE LWA_USER. NEW-LINE.
**  ENDLOOP.
**ENDFORM. "print_users