--select
--trim(Nome_Funcionario) + ' ' + trim(Sobrenome_Funcionario)
--from Funcionario
--go



Select
trim(Nome_Funcionario) + ' ' + trim(Sobrenome_Funcionario)
From Funcionario
Where ID_Funcionario=1