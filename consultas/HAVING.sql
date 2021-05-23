SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE
FROM TABELA_DE_CLIENTES GROUP BY ESTADO

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) >= 900000


SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO, MIN(PRECO_DE_LISTA) AS MENOR_PRECO
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) <= 80