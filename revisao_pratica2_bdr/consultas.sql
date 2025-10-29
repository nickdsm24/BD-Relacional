-- 7:
SELECT
	p.nome AS nome_produto,
	l.nome_loja,
	v.quantidade
FROM venda v
	INNER JOIN produto p ON v.id_produto = p.id_produto
	INNER JOIN loja l ON v.id_loja = l.id_loja;
	
-- 8:
SELECT
	l.nome_loja,
	SUM(v.quantidade) AS total
FROM venda v
	INNER JOIN loja l ON v.id_loja = l.id_loja
	
GROUP BY l.nome_loja;

-- 9:
SELECT
	l.nome_loja,
	SUM(v.quantidade) AS total
FROM venda v
	INNER JOIN loja l ON v.id_loja = l.id_loja
	
GROUP BY l.nome_loja
HAVING SUM(v.quantidade) > 30;

-- 10:
SELECT
	f.nome_fabricante
FROM fabricante f
WHERE f.id_fabricante IN(
			SELECT DISTINCT p.id_fabricante
			FROM venda v
			
			INNER JOIN produto p ON v.id_produto = p.id_produto
);
	