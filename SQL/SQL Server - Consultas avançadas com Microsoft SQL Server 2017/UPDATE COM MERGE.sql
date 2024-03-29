SELECT * FROM SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1002334'

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1002334'

SELECT 
B.[CODIGO DO PRODUTO], B.[PRE�O DE LISTA], A.[CODIGO DO PRODUTO], A.[PRE�O DE LISTA]
FROM [TABELA DE PRODUTOS] A
INNER JOIN SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS] B
ON A.[CODIGO DO PRODUTO]=B.[CODIGO DO PRODUTO]
WHERE A.[CODIGO DO PRODUTO] = '1002334'

UPDATE [SUCOS_VENDAS].[dbo].[TABELA DE PRODUTOS] SET [PRE�O DE LISTA] = 8
WHERE [CODIGO DO PRODUTO] = '1002334'

MERGE INTO [TABELA DE PRODUTOS] A
USING  [SUCOS_VENDAS].[dbo].[TABELA DE PRODUTOS] B
ON A.[CODIGO DO PRODUTO] = B.[CODIGO DO PRODUTO]
AND A.[CODIGO DO PRODUTO] = '1002334'
WHEN MATCHED THEN 
UPDATE  SET A.[PRE�O DE LISTA] = B.[PRE�O DE LISTA];

/*EXERCICIO COM MERGE*/
MERGE INTO [DBO].[TABELA DE CLIENTES] A
USING [DBO].[TABELA DE VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]
WHEN MATCHED THEN
UPDATE SET A.[VOLUME DE COMPRA] = A.[VOLUME DE COMPRA] * 1.30;