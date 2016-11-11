CREATE OR REPLACE FUNCTION F_REMOVE_SPECIAL_CHARS(P_TEXTO IN VARCHAR2) RETURN VARCHAR2 IS
   V_TEXTO    VARCHAR2(32767);
/*
 *
*/   
BEGIN                                                                 
   V_TEXTO := P_TEXTO;
   V_TEXTO := REPLACE(V_TEXTO,'Ã','A');
   V_TEXTO := REPLACE(V_TEXTO,'Õ','O');
   V_TEXTO := REPLACE(V_TEXTO,'ã','a');
   V_TEXTO := REPLACE(V_TEXTO,'õ','o');
   V_TEXTO := REPLACE(V_TEXTO,'Á','A');
   V_TEXTO := REPLACE(V_TEXTO,'É','E');
   V_TEXTO := REPLACE(V_TEXTO,'Í','I');
   V_TEXTO := REPLACE(V_TEXTO,'Ó','O');
   V_TEXTO := REPLACE(V_TEXTO,'Ú','U');
   V_TEXTO := REPLACE(V_TEXTO,'á','a');
   V_TEXTO := REPLACE(V_TEXTO,'é','e');
   V_TEXTO := REPLACE(V_TEXTO,'í','i');
   V_TEXTO := REPLACE(V_TEXTO,'ó','o');
   V_TEXTO := REPLACE(V_TEXTO,'ú','u');
   V_TEXTO := REPLACE(V_TEXTO,'À','A');
   V_TEXTO := REPLACE(V_TEXTO,'à','a');
   V_TEXTO := REPLACE(V_TEXTO,'Â','A');
   V_TEXTO := REPLACE(V_TEXTO,'Ê','E');
   V_TEXTO := REPLACE(V_TEXTO,'Ô','O');
   V_TEXTO := REPLACE(V_TEXTO,'â','a');
   V_TEXTO := REPLACE(V_TEXTO,'ê','e');
   V_TEXTO := REPLACE(V_TEXTO,'ô','o');
   V_TEXTO := REPLACE(V_TEXTO,'ç','c');
   V_TEXTO := REPLACE(V_TEXTO,'Ç','C');
   V_TEXTO := REPLACE(V_TEXTO,'ü','u');
   V_TEXTO := REPLACE(V_TEXTO,'Ü','U');
   V_TEXTO := REPLACE(V_TEXTO,'º','.');
   V_TEXTO := REPLACE(V_TEXTO,'ª','.');
   V_TEXTO := REPLACE(V_TEXTO,';',' ');
   V_TEXTO := REPLACE(V_TEXTO,'&',' ');
   V_TEXTO := REPLACE(V_TEXTO,CHR(39),' ');
   RETURN V_TEXTO;
END F_REMOVE_SPECIAL_CHARS;
