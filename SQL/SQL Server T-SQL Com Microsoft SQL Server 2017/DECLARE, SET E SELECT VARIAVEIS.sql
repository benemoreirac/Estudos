/*
DECLARE @IDADE INT
DECLARE @NOME VARCHAR(200)
DECLARE @DATA DATE

DECLARE @IDADE2 INT, @NOME2 VARCHAR(200), @DATA2 DATE

SET @IDADE = 20
PRINT @IDADE

SET @NOME = 'JOAO DA SILVA'
PRINT @NOME

SET @DATA = GETDATE()
PRINT @DATA

DECLARE @CPF VARCHAR(12)
SET @CPF = '1471156710'

SELECT NOME, [DATA DE NASCIMENTO], IDADE FROM [TABELA DE CLIENTES]
WHERE CPF = '1471156710'

-- BUSCA O CPF REGISTRADO NA VARIAVEL, NESTE CASO A DA PROPRIA CLIENTE, PODENDO SER DE QUALQUER OUTRO
SELECT NOME, [DATA DE NASCIMENTO], IDADE FROM [TABELA DE CLIENTES]
WHERE CPF = @CPF

SELECT @NOME2 = NOME, @DATA2 = [DATA DE NASCIMENTO], @IDADE2= IDADE FROM [TABELA DE CLIENTES]
WHERE CPF = @CPF
PRINT 'PRINT DE VALORES SELECT'
PRINT @DATA2
PRINT @NOME2
PRINT @IDADE2

*/

DECLARE @MATRICULA VARCHAR(5), @NOME VARCHAR(100), @PERCENTUAL FLOAT, @DATA DATE, @FERIAS BIT , @BAIRRO VARCHAR(100)
SET @MATRICULA = '0239'
SET @NOME = 'JOs� Mattos'
SET @PERCENTUAL = 0.10
SET @DATA = GETDATE()
SET @FERIAS = 1
SET @BAIRRO = 'Meier'

INSERT INTO [TABELA DE VENDEDORES]
(MATRICULA, NOME, [PERCENTUAL COMISS�O], [DATA ADMISS�O], [DE FERIAS], BAIRRO)
VALUES
(@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO)

SELECT * FROM [TABELA DE VENDEDORES]

/*EXERCICIO*/
DECLARE @CLIENTE VARCHAR (10), @IDADE INT, @DATA_NASCIMENTO DATE, @CUSTO FLOAT
SET @CLIENTE = 'Jo�o'
SET @IDADE = 10
SET @DATA_NASCIMENTO = GETDATE()
SET @CUSTO = 10.23

PRINT @CLIENTE
PRINT @IDADE
PRINT @DATA_NASCIMENTO
PRINT @CUSTO


-- EXERCICIO 2
DECLARE @NUMNOTAS INT
SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS]
WHERE DATA = '2017.01.01'
PRINT @NUMNOTAS