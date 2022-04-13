-Select *

--From Produto

--WHERE(Descricao_Produto LIKE '%COCA%') AND (ID_Categoria=3)

--Go

--Select Categoria.ID_categoria,
--Categoria.Descricao_Categoria,
--Subcategoria.ID_Subcategoria,
--Subcategoria.Descricao_Subcategoria,
--Produto.ID_Produto,
--Produto. Descricao_Produto

--From Produto

 --Inner Join Subcategoria On Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
 --Inner Join Categoria On Categoria.ID_categoria = Produto.ID_Categoria

---Go


----Select Categoria.ID_categoria,
--    Categoria.Descricao_Categoria,
--	Subcategoria.ID_Subcategoria,
--  Subcategoria.Descricao_Subcategoria,
--    Produto.ID_Produto,
--   Produto. Descricao_Produto

--   From Produto

-- Inner Join Subcategoria On Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
-- Inner Join Categoria On Categoria.ID_categoria = Produto.ID_Categoria

-- Where Descricao_Produto Like 'Gim%'

--  Go
   


   Select Categoria.ID_categoria  As 'codigo da categoria',
    Categoria.Descricao_Categoria  As 'Nome da Categoria',
	Subcategoria.ID_Subcategoria AS  'Codigo de Subcategoria',
  Subcategoria.Descricao_Subcategoria AS 'Nome da Subcategoria',
    Produto.ID_Produto  As ' Nome do Produto',
   Produto. Descricao_Produto
    
   From Produto

 Inner Join Subcategoria On Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
 Inner Join Categoria On Categoria.ID_categoria = Produto.ID_Categoria

 Where Descricao_Subcategoria Like 'Suco%' and  Descricao_Produto like '%Maguary%'

  Go
