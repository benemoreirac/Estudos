DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT
SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 10

WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
	PRINT @LIMITE_MINIMO
	SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1
END


-- STOP LOOPING COM BREAK
DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT
SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 10

WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
	PRINT @LIMITE_MINIMO
	SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1
	IF @LIMITE_MINIMO = 6
	BREAK
END


-- LIMITE BREAK DECLARADO
DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT, @LIMITE_BREAK INT
SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 10
SET @LIMITE_BREAK = 8

WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
	PRINT @LIMITE_MINIMO
	SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1
	IF @LIMITE_MINIMO = @LIMITE_BREAK
	BEGIN 
		PRINT 'SAINDO POR CAUSA DO BREAK'
		BREAK
	END
END


-- EXERCICIO--
DECLARE @DATA_INICIO DATE, @DATA_FIM DATE
DECLARE @NUMNOTAS INT

SET @DATA_INICIO = '2017.01.01'
SET @DATA_FIM = '2017.01.10'

WHILE @DATA_INICIO <= @DATA_FIM
BEGIN
	SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] NF
		WHERE DATA = @DATA_INICIO
	PRINT CONVERT(VARCHAR(10), @DATA_INICIO) + '-->' + CONVERT(VARCHAR(10), @NUMNOTAS)
	SELECT @DATA_INICIO = DATEADD(DAY, 1, @DATA_INICIO)
END






SELECT DATEADD(DAY, 4, GETDATE())