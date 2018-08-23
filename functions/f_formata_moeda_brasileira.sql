create or replace FUNCTION F_FORMATA_MOEDA_BRASILEIRA 
(
  NUMERO IN NUMBER 
) RETURN VARCHAR2 AS 
 VALOR_FORMATADO VARCHAR2(50);
 /*
 * Programado por: Daniel Mendes
 * Data: 13/09/2016
 * Observação : Formata o numero para o formato de moeda brasileira sem alterar a sessão no oracle 
 */
BEGIN
  
  if NUMERO = 0 Then
    VALOR_FORMATADO := '0,00';
  else
    Select 
      to_char(NUMERO, 'FM999G999G999D90', 'nls_numeric_characters='',.''') 
    INTO 
      VALOR_FORMATADO
    from   dual;
    
  End If;   
  
  RETURN VALOR_FORMATADO;
END F_FORMATA_MOEDA_BRASILEIRA ;