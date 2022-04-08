CREATE TABLE Subcategoria (
     ID_Subcategoria INT NOT NULL IDENTITY(1,1),
	ID_categoria INT NOT NULL, 
	Descricao_Subcategoria VARCHAR(MAX) NOT NULL,
	Situacao BIT  NULL DEFAULT 1,
	DataInclusao DATETIME NOT NULL DEFAULT GETDATE (), 
	CONSTRAINT Pk_subcategoria PRIMARY KEY (ID_Subcategoria),
	CONSTRAINT Fk_Subcategoria_Categoria FOREIGN KEY (ID_categoria)
	REFERENCES Categoria(ID_categoria)
)
GO
