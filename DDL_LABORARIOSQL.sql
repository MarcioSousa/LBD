DROP TABLE ITEM_PEDIDO
GO

DROP TABLE PEDIDO
GO

DROP TABLE PRODUTO
GO

DROP TABLE VENDEDOR
GO

DROP TABLE CLIENTE
GO
/*01*/
CREATE DATABASE LABORATORIOSQL
GO

USE LABORATORIOSQL
GO

CREATE TABLE CLIENTE (
	Cod_cliente NUMERIC (5,0) NOT NULL IDENTITY(1,1),
	Nome_cliente VARCHAR(30),
	Endereco VARCHAR(25),
	Cidade VARCHAR(20),
	Cep CHAR(10),
	UF CHAR(2)
)
GO

ALTER TABLE CLIENTE ADD CONSTRAINT PK_COD_CLIENTE
PRIMARY KEY (Cod_cliente)
GO

CREATE TABLE VENDEDOR(
	Cod_vendedor NUMERIC(3,0) NOT NULL IDENTITY(1,1),
	Nome_vendedor VARCHAR(30),
	Faixa_comissao NUMERIC(6,2),
	Salario_fixo NUMERIC(9,2)
)
GO

ALTER TABLE VENDEDOR ADD CONSTRAINT PK_COD_VENDEDOR
PRIMARY KEY (Cod_vendedor)
GO

CREATE TABLE PRODUTO(
	Cod_produto NUMERIC(3,0) NOT NULL IDENTITY(1,1),
	Descricao VARCHAR(20),
	Unidade CHAR(2),
	Valor_unitario NUMERIC(9,2)
)
GO

ALTER TABLE PRODUTO ADD CONSTRAINT PK_COD_PRODUTO
PRIMARY KEY (Cod_produto)
GO

CREATE TABLE PEDIDO(
	Num_pedido NUMERIC(3,0) NOT NULL IDENTITY(1,1),
	Prazo_entrega DATETIME,
	Cod_cliente NUMERIC(5,0),
	Cod_vendedor NUMERIC(3,0)
)
GO

ALTER TABLE PEDIDO ADD CONSTRAINT PK_NUM_PEDIDO
PRIMARY KEY (Num_pedido)
GO

ALTER TABLE PEDIDO ADD CONSTRAINT FK_COD_CLIENTE
FOREIGN KEY(Cod_cliente)
REFERENCES CLIENTE(Cod_cliente)
GO

ALTER TABLE PEDIDO ADD CONSTRAINT FK_COD_VENDEDOR
FOREIGN KEY(Cod_vendedor)
REFERENCES VENDEDOR(Cod_vendedor)
GO

CREATE TABLE ITEM_PEDIDO(
	Num_pedido NUMERIC(3, 0) NOT NULL,
	Cod_produto NUMERIC(3,0) NOT NULL,
	Quantidade NUMERIC(5,0)
)
GO

ALTER TABLE ITEM_PEDIDO ADD CONSTRAINT PK_COD_PEDIDO_PRODUTO
PRIMARY KEY(Num_pedido, Cod_produto)
GO

ALTER TABLE ITEM_PEDIDO ADD CONSTRAINT FK_COD_PEDIDO
FOREIGN KEY(Num_pedido)
REFERENCES PEDIDO(Num_pedido)
GO

ALTER TABLE ITEM_PEDIDO ADD CONSTRAINT FK_COD_PRODUTO
FOREIGN KEY(Cod_produto)
REFERENCES PRODUTO(Cod_produto)
GO

/*03*/
ALTER TABLE CLIENTE ALTER COLUMN Endereco varchar(30)
GO

/*04*/
ALTER TABLE ITEM_PEDIDO ADD Pco_Unit NUMERIC(6,2)
GO