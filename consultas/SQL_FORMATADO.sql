SELECT
    venda_sabor.sabor,
    venda_sabor.ano,
    venda_sabor.quantidade_vendida,
    round(((venda_sabor.quantidade_vendida / total_venda.quantidade_vendida) * 100), 2) AS participacao
FROM
    (
        SELECT
            tp.sabor,
            to_char(nf.data_venda, 'YYYY') AS ano,
            SUM(inf.quantidade) AS quantidade_vendida
        FROM
            itens_notas_fiscais   inf
            INNER JOIN tabela_de_produtos    tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais         nf ON inf.numero = nf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            tp.sabor,
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            SUM(inf.quantidade) DESC
    ) venda_sabor
    INNER JOIN (
        SELECT
            to_char(nf.data_venda, 'YYYY') AS ano,
            SUM(inf.quantidade) AS quantidade_vendida
        FROM
            itens_notas_fiscais   inf
            INNER JOIN tabela_de_produtos    tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais         nf ON inf.numero = nf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            SUM(inf.quantidade) DESC
    ) total_venda ON venda_sabor.ano = total_venda.ano;