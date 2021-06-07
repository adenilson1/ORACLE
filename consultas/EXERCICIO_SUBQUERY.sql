SELECT CPF, COUNT(*) FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF
HAVING COUNT(*) > 2000

SELECT Z.CPF, Z.ANO FROM
(SELECT CPF, COUNT(*) AS ANO FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF ) Z
WHERE Z.ANO > 2000