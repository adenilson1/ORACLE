SELECT COUNT(*) AS QUANTIADADE_DE_ITENS, SUM(QUANTIDADE) AS VENDA FROM ITENS_NOTAS_FISCAIS
WHERE CODIGO_DO_PRODUTO = '1101035'

DESC ITENS_NOTAS_FISCAIS