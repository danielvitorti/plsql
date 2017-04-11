create or replace FUNCTION F_ACESSA_URL
(
  P_URL IN VARCHAR2
  ) RETURN VARCHAR2 IS
   l_http_request   UTL_HTTP.req;
     l_http_response  UTL_HTTP.resp;
       l_text           VARCHAR2(32767);
        
	BEGIN

	  
	    BEGIN
	        l_http_request  := UTL_HTTP.begin_request(p_url);
		    l_http_response := UTL_HTTP.get_response(l_http_request);

		      RETURN 'TRUE';
		       
		         EXCEPTION
			     WHEN NO_DATA_FOUND THEN
			           UTL_HTTP.end_response(l_http_response);
				       RETURN 'FALSE';
				         END;
					 END;
