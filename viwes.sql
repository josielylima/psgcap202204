Create View [dbo].[VW_funcionarios_Informacoes] As
SELECT Funcionario_Dados_Pessoais.ID_Funcionario, Funcionario_Dados_Pessoais.
Matricula_Funcionario, Funcionario_Dados_Pessoais.Nome_funcionario, Funcionario_Dados_Pessoais.Sobrenome_Funcionario, 
     Funcionarios_Dados_Empresa.
     Data_Admissao_Funcionario, Funcionarios_Dados_Empresa.
     Ctps_Funcionario, Funcionario_Dados_Pessoais.Sexo_Funcionario, Funcionario_Dados_Pessoais.Datanasc_Funcionario, 
        Funcionario_Dados_Pessoais.Email_Funcionario
FROM   Funcionario_Dados_Pessoais INNER JOIN
   Funcionarios_Dados_Empresa ON Funcionario_Dados_Pessoais.Matricula_Funcionario = Funcionarios_Dados_Empresa.Matricula_Funcionario
WHERE   (Funcionario_Dados_Pessoais.Situacao = 1)

                 
GO
