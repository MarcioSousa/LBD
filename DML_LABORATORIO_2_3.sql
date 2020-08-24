/*02 - REALIZANDO CONSULTAS*/

/*01*/
SELECT Num_pedido, Prazo_entrega FROM PEDIDO
GO
/*02*/
SELECT Descricao, Valor_unitario FROM PRODUTO
GO
/*03*/
SELECT Nome_cliente, Endereco FROM CLIENTE
GO
/*04*/
SELECT Nome_vendedor FROM VENDEDOR
GO
/*05*/
SELECT * FROM CLIENTE
GO
/*06*/
SELECT * FROM PRODUTO
GO
/*07*/
SELECT Nome_vendedor AS 'nome' FROM VENDEDOR
GO
/*08*/
SELECT Valor_unitario * 1.1 FROM PRODUTO
GO
/*09*/
SELECT Salario_fixo * 1.05 FROM VENDEDOR
GO
/*10*/
SELECT Nome_cliente FROM CLIENTE WHERE Cidade = 'Sorocaba'
GO
/*11*/
SELECT * FROM VENDEDOR WHERE Salario_fixo < 400
GO
/*12*/
SELECT Cod_produto, Descricao FROM PRODUTO WHERE Unidade = 'kg'
GO
/*13*/
SELECT Num_pedido, Prazo_entrega FROM PEDIDO WHERE Prazo_entrega BETWEEN '01-05-1998' AND '01-06-1998' 
GO
/*14*/
SELECT Num_pedido, Prazo_entrega FROM PEDIDO WHERE YEAR(Prazo_entrega) = 2004
GO
/*15*/
SELECT * FROM PRODUTO WHERE Valor_unitario BETWEEN 100 AND 200
GO
/*16*/
SELECT Num_pedido, Cod_produto FROM ITEM_PEDIDO WHERE Quantidade BETWEEN 1000 AND 1500
GO
/*17*/
SELECT Nome_vendedor FROM VENDEDOR WHERE Nome_vendedor LIKE 'José%'
GO
/*18*/
SELECT Nome_cliente FROM CLIENTE WHERE Nome_cliente LIKE '%Silva'
GO
/*19*/
SELECT Descricao, Cod_produto FROM PRODUTO WHERE Descricao LIKE '%ac%'
GO
/*20*/
SELECT Nome_cliente FROM CLIENTE WHERE Endereco IS NULL
GO
/*21*/
SELECT DISTINCT(Cidade) FROM CLIENTE
GO
/*22*/
SELECT * FROM CLIENTE ORDER BY Nome_cliente ASC
GO
/*23*/
SELECT * FROM CLIENTE ORDER BY Cidade DESC
GO
/*24*/
SELECT * FROM CLIENTE ORDER BY Cidade, Nome_cliente
GO
/*25*/
SELECT Cod_produto, Descricao FROM PRODUTO WHERE Unidade = 'kg' ORDER BY Descricao ASC
GO

/*03 - CONSULTAS USANDO FUNÇÕES*/
/*01*/
SELECT MAX(Quantidade) FROM ITEM_PEDIDO
GO
/*02*/
SELECT MIN(Valor_unitario) FROM PRODUTO
GO
/*03*/
SELECT SUM(Salario_fixo) AS 'Total' FROM VENDEDOR
GO
/*04*/
SELECT COUNT(Cod_produto) AS 'Qtde Produtos' FROM PRODUTO WHERE Unidade = 'Lt'
GO
/*05*/
SELECT COUNT(Cidade) AS 'Qtde Clientes', Cidade FROM CLIENTE GROUP BY Cidade
GO
/*06*/
SELECT COUNT(Nome_vendedor) AS 'Qtde Pedidos', Nome_vendedor FROM VENDEDOR GROUP BY Nome_vendedor
GO
/*07*/
SELECT MIN(Valor_unitario) AS 'Menor Valor', MAX(Valor_unitario) AS 'Maior Valor' FROM PRODUTO GROUP BY Unidade
GO
/*08*/
SELECT COUNT(Cidade), Cidade AS 'Qtde Clientes' FROM CLIENTE GROUP BY Cidade HAVING COUNT(Cidade) > 4
GO