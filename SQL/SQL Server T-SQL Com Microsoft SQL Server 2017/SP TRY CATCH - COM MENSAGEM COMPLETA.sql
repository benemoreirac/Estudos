CREATE PROCEDURE [dbo].[TrataErroZeroTry2] 
	@CPF VARCHAR(12),
	@ANO INT,
	@DENOMINADOR INT,
	@MENSAGEM VARCHAR(50) OUTPUT
AS
BEGIN
	BEGIN TRY
		SELECT 
			SUM(A.QUANTIDADE * A.[PRE�O]) AS FATURAMENTO,
			SUM(A.QUANTIDADE * PRE�O)/@DENOMINADOR AS COMISSAO
		FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B ON A.NUMERO=B.NUMERO 
		WHERE B.CPF=@CPF AND YEAR(B.DATA) = @ANO
	END TRY
	BEGIN CATCH
		SET @MENSAGEM = 'HOUVE UM ERRO: ' + CONVERT(VARCHAR(4), ERROR_NUMBER()) + ' - ' 
		SET @MENSAGEM = @MENSAGEM + 'DESCRI��O DO ERRO: ' + ERROR_MESSAGE() 
		SET @MENSAGEM = @MENSAGEM + 'GRAU DE SERVERIDADE DO ERRO: ' + CONVERT(VARCHAR(10), ERROR_SEVERITY()) + ' - '
		SET @MENSAGEM = @MENSAGEM + 'ESTADO DO ERRO: ' + CONVERT(VARCHAR(10), ERROR_STATE()) + ' - '
		SET @MENSAGEM = @MENSAGEM + 'N� DA LINHA: ' + CONVERT(VARCHAR(10), ERROR_LINE()) + ' - '
		SET @MENSAGEM = @MENSAGEM + 'PROCEDURE: ' + CONVERT(VARCHAR(10), ERROR_PROCEDURE()) 		
	END CATCH
END

DECLARE @DENOMINADOR INT
DECLARE @CPF VARCHAR(12)
DECLARE @ANO INT
DECLARE @MENSAGEM VARCHAR(MAX)

SET @CPF='1471156710'
SET @ANO = 2016
SET @DENOMINADOR = 0
SET @MENSAGEM =''

EXEC TrataErroZeroTry2 @CPF=@CPF, @ANO=@ANO, @DENOMINADOR=@DENOMINADOR, @MENSAGEM=@MENSAGEM OUTPUT
IF @MENSAGEM= ''
	PRINT @MENSAGEM

ALTER PROCEDURE [dbo].[TrataErroZeroTry2] 
	@CPF VARCHAR(12),
	@ANO INT,
	@DENOMINADOR INT,
	@MENSAGEM VARCHAR(MAX) OUTPUT
AS
BEGIN
	BEGIN TRY
		SELECT 
			SUM(A.QUANTIDADE * A.[PRE�O]) AS FATURAMENTO,
			SUM(A.QUANTIDADE * PRE�O)/@DENOMINADOR AS COMISSAO
		FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B ON A.NUMERO=B.NUMERO 
		WHERE B.CPF=@CPF AND YEAR(B.DATA) = @ANO
	END TRY
	BEGIN CATCH
		SET @MENSAGEM = 'HOUVE UM ERRO: ' + CONVERT(VARCHAR(4), ERROR_NUMBER()) + ' - ' 
		SET @MENSAGEM = @MENSAGEM + 'DESCRI��O DO ERRO: ' + ERROR_MESSAGE()  + ' - ' 
		SET @MENSAGEM = @MENSAGEM + 'GRAU DE SERVERIDADE DO ERRO: ' + CONVERT(VARCHAR(10), ERROR_SEVERITY()) + ' - '
		SET @MENSAGEM = @MENSAGEM + 'ESTADO DO ERRO: ' + CONVERT(VARCHAR(10), ERROR_STATE()) + ' - '
		SET @MENSAGEM = @MENSAGEM + 'N� DA LINHA: ' + CONVERT(VARCHAR(10), ERROR_LINE()) + ' - '
		SET @MENSAGEM = @MENSAGEM + 'PROCEDURE: ' + CONVERT(VARCHAR(10), ERROR_PROCEDURE()) 		
	END CATCH
END
