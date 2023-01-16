*&---------------------------------------------------------------------*
*&  Exercicio 79
*&---------------------------------------------------------------------*

REPORT ZPR_EXERC_FB_079.

*Declare three parameters as radio buttons. Each of them will represent a different flight class
*(first, business and economy).

PARAMETERS: p_first RADIOBUTTON GROUP rad1 DEFAULT 'X'.
PARAMETERS: p_bus RADIOBUTTON GROUP rad1.
PARAMETERS: p_eco RADIOBUTTON GROUP rad1.