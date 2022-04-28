--IMPORTANDO DADOS PARA A NOVA TABELA.
--ATENÇÃO A CONVERSÃO DE DADOS REALIZADA PARA MATRICULA.

INSERT INTO Funcionario_Dados_Pessoais(
	ID_Funcionario, 
	Matricula_Funcionario, 
	Nome_Funcionario,
	Sobrenome_Funcionario,
	Sexo_Funcionario,
	Datanasc_Funcionario,
	Email_Funcionario,
	ID_Pais,
	Situacao,
	DataInclusao,
	DataAlteracao,
	DataExclusao)
		SELECT 
			ID_Funcionario, 
			CONVERT(BIGINT, Matricula_Funcionario) AS Matricula_Funcionario, 
			Nome_Funcionario, 
			Sobrenome_Funcionario, 
			Sexo_Funcionario, 
			Datanasc_Funcionario, 
			Email_Funcionario, 
			ID_Pais, 
			Situacao, 
			DataInclusao, 
			DataAlteracao, 
			DataExclusao
		FROM FuncionarioFuncionario_Dados_Pessoais

--CRIANDO TABELA FUNCIONARIO_DADOS_EMPRESA
CREATE TABLE Funcionarios_Dados_Empresa(
	ID_FuncDadosEmpresa BIGINT NOT NULL IDENTITY(1,1),
	Matricula_Funcionario bigint NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,                                                              criando tabela
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Data_Admissao_Funcionario datetime NOT NULL,
	Ctps_Funcionario varchar(50) NOT NULL,
	Ctps_Num_Funcionario bigint NOT NULL,
	Ctps_Serie_Funcionario int NOT NULL,
	Situacao bit NULL default 1,
	DataInclusao datetime NULL default getdate(),
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,	
	CONSTRAINT PK_FuncDadosEmpresa PRIMARY KEY (ID_FuncDadosEmpresa)
) ON PRIMARY
GO

--IMPORTAR OS DADOS PARA A TABELA FINAL.

INSERT INTO Funcionarios_Dados_Empresa(
	Matricula_Funcionario,                                                       iNSERINDO NA TABELA
	Nome_Funcionario,
	Sobrenome_Funcionario,
	Data_Admissao_Funcionario,
	Ctps_Funcionario,
	Ctps_Num_Funcionario,                                                 
	Ctps_Serie_Funcionario
)
SELECT 
	chave, 
	nome, 
	sobrenome, 
	convert(datetime, dataadmissao) AS dataadmissao, 
	ctps, 
	ctpsnum, 
	ctpsserie
FROM RAW_DATA_Funcionarios_Dados_Empresa

--CRIANDO UMA VIEW PARA CONSULTAS POR OUTROS USUARIOS.

CREATE VIEW VW_Funcionarios_Informacao AS                                          VIEW CRIANDO
SELECT 
	FDP.ID_Funcionario, 
	FDP.Matricula_Funcionario, 
	FDP.Nome_Funcionario, 
	FDP.Sobrenome_Funcionario, 
	FDE.Data_Admissao_Funcionario, 
	FDE.Ctps_Funcionario, 
	FDP.Sexo_Funcionario, 
	FDP.Datanasc_Funcionario, 
    FDP.Email_Funcionario
FROM Funcionario_Dados_Empresa AS FDE INNER JOIN
    Funcionario_Dados_Pessoais AS FDP ON FDE.Matricula_Funcionario = FDP.Matricula_Funcionario
WHERE (FDP.Situacao = 1)



SCRIPT DE PROGRAMA PARA OBTER DATA

DECLARE @DATA DATETIME

SET @DATA = GETDATE()

SELECT 
	@DATA AS 'Data Atual',
	YEAR(@DATA) AS 'Ano Atual',
	MONTH(@DATA) AS 'Mês Atual',
	DAY(@DATA) AS 'Dia Atual',
	DATEPART(WEEK, @DATA) AS 'Dia da Semana'
GO

--SCRIPT PARA CRIAR PROCEDURE PROCESSAR DATA                           PROCEDURE CRIANDO

CREATE PROCEDURE SP_Processar_Data
	@DATAPARAM DATETIME                                    
AS
BEGIN
	SELECT 
		@DATAPARAM AS 'Data Atual',
		YEAR(@DATAPARAM) AS 'Ano Atual',
		MONTH(@DATAPARAM) AS 'Mês Atual',
		DAY(@DATAPARAM) AS 'Dia Atual',
		DATEPART(WEEK, @DATAPARAM) AS 'Dia da Semana'
END;

--SCRIPT PARA CRIAR PROCEDURE PARA BUSCAR FUNCIONARIO POR DATA DE ADMISSAO, COM PARAMETROS ANO, MES E DIA

CREATE PROCEDURE SP_Buscar_Funcionario_Por_Data_Admissao
@ANO INT,
@MES INT,
@DIA INT
AS
BEGIN
	SELECT 
		ID_FuncDadosEmpresa, 
		Matricula_Funcionario, 
		Nome_Funcionario,                                                         PROCEDURE
		Sobrenome_Funcionario, 
		Data_Admissao_Funcionario, 
		Ctps_Funcionario
	FROM Funcionario_Dados_Empresa
	WHERE YEAR(Data_Admissao_Funcionario) = @ANO
	AND MONTH(Data_Admissao_Funcionario) = @MES
	AND DAY(Data_Admissao_Funcionario) = @DIA
	ORDER BY Data_Admissao_Funcionario ASC
END;





