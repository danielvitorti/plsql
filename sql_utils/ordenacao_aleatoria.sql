SELECT CD_AUDITORIA,
	CAMPO_1,
	CAMPO_2,
	CAMPO_3,
	CAMPO_4,
	CAMPO_5
FROM TABELA
ORDER BY DBMS_RANDOM.value()



SELECT  *
FROM    (
    SELECT  *
    FROM    tabela sample (0.01)
    ORDER BY
            dbms_random.value
    )
WHERE rownum <= 1000


