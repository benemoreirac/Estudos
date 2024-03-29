CREATE PROCEDURE BuscaPorEntidade @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
	SELECT 
		[CPF] AS IDENTIFICADOR, 
		[NOME] AS DESCRITOR, 
		[BAIRRO] FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE ='VENDEDORES'
	SELECT
		[MATRICULA] AS IDENTIFICADOR,
		[NOME] AS DESCRITOR,
		[BAIRRO]
	FROM [TABELA DE VENDEDORES]
END

EXEC BuscaPorEntidade @ENTIDADE = 'CLIENTES'
EXEC BuscaPorEntidade @ENTIDADE = 'VENDEDORES'

/*EXERCICIO - BUSCA POR STORED PROCEDURE COMPLETA*/

CREATE PROCEDURE BuscaPorEntidadeCompleta @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
	SELECT 
		[CPF] AS IDENTIFICADOR, 
		[NOME] AS DESCRITOR, 
		[BAIRRO] FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE ='VENDEDORES'
	SELECT
		[MATRICULA] AS IDENTIFICADOR,
		[NOME] AS DESCRITOR,
		[BAIRRO]
	FROM [TABELA DE VENDEDORES]
ELSE IF @ENTIDADE = 'PRODUTOS'
	SELECT 
		[CODIGO DO PRODUTO] AS IDENTIFICADOR, 
		[NOME DO PRODUTO] AS 'NOME DO PRODUTO' 
	FROM [TABELA DE PRODUTOS]
END

EXEC BuscaPorEntidadeCompleta @ENTIDADE = 'PRODUTOS'