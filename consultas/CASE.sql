SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
(CASE 
WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12  THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO'
END) AS STATUS_PRECO
FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Manga'


SELECT EMBALAGEM,
(CASE 
WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12  THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO'
END) AS STATUS_PRECO,
AVG(PRECO_DE_LISTA) AS MEDIA_PRECO
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM,
(CASE 
WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12  THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO'
END)

