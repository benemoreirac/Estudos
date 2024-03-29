SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]

SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]
WHERE BAIRRO IN (SELECT BAIRRO FROM [TABELA DE VENDEDORES])

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT NC.EMBALAGEM, NC.MAX_PRECO
FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM) NC
WHERE NC.MAX_PRECO <= 5

/* SELECT COM RESULTADO PARA NOVA VIEW, CRIADA VIA ASSISTENTE*/
SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT * FROM [VW_EMBALAGENS]

/*SELEC DIRETAMENTE DA VIEW CRIADA, SEM A NECESSIDADE DO SUBSELECT*/
SELECT NC.EMBALAGEM, NC.MAX_PRECO
FROM [VW_EMBALAGENS] NC
WHERE NC.MAX_PRECO <= 5



