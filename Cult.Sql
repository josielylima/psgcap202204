Select Cat.Descricao_Categoria As 'Nome da Categoria',
 Sub.Descricao_Subcategoria As 'Nome da Subcategoria',
 Pro.Descricao_Produto As 'Nome do Produto'
 From Produto As Pro
 Inner Join Subcategoria as Sub On Sub.ID_Subcategoria = Pro.ID_Subcategoria
 Inner Join Categoria as Cat  On Cat.ID_Categoria = Pro.ID_Categoria
 Where (Descricao_Categoria like '%Bebidas%') and (Descricao_Subcategoria like 'Refresco%') and (Descricao_Produto like '%Tang%')

 GO

 Select COUNT (*) As 'Quantidade de item' From Produto as Pro

 Inner Join Subcategoria as Sub On Sub.ID_Subcategoria = Pro.ID_Subcategoria
 Inner Join Categoria as Cat  On Cat.ID_Categoria = Pro.ID_Categoria
 Where (Descricao_Categoria like '%Bebidas%') and (Descricao_Subcategoria like 'Refresco%') and (Descricao_Produto like '%Tang%')

 GO
