
/* ===================================== Faz uma consulta na tabela retornando os registros que ela tinha a 30 minutos atras ========================================*/
select * from sua_tabela as of timestamp systimestamp - interval '30' minute;





/* ===================================== Volta os registros da tabela de 30 minutos atras ============================================================================*/
insert into sua_tabela
select * from sua_tabela as of timestamp systimestamp - interval '30' minute order by codigo desc;

