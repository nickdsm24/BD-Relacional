
-- E1: Lista quantos livros cada autor publicou por editora
-- Retorna o nome do autor, o nome da editora e a contagem de livros agrupados por essa combinação
SELECT
	a.nome AS autor,
	e.nome AS editora,
	COUNT(l.id_livro) AS total_livros
FROM autor a

JOIN livro l ON a.id_autor = l.id_autor
JOIN editora e ON l.id_editora = e.id_editora

GROUP BY a.nome, e.nome
ORDER BY autor, editora;


-- E2: Lista a média de páginas dos livros por autor
-- Retorna o nome do autor e a média de páginas (arredondada) de todos os livros associados
SELECT
	a.nome AS autor,
	TRUNC(AVG(l.num_paginas)) AS media_de_paginas
FROM autor a

JOIN livro l ON a.id_autor = l.id_autor

GROUP BY a.nome;


-- E3: Mostra o total de livros emprestados por curso e por aluno
-- Adaptado de "total de campanhas por reservatório e instituição"
-- Devolve o curso, o nome do aluno e quantos livros ele já pegou
SELECT
	a.curso,
	a.nome AS aluno,
	COUNT(el.id_livro) AS total_livros_emprestados
FROM aluno a

JOIN emprestimo e ON a.id_aluno = e.id_aluno
JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo

GROUP BY a.curso, a.nome
ORDER BY a.curso, a.nome;


-- E4: Mostra a média de páginas dos livros emprestados por curso
-- Adaptado de "média de valores de parâmetros por reservatório"
-- Devolve o curso e a média de páginas dos livros que os alunos desse curso pegaram emprestado
SELECT
	a.curso,
	TRUNC(AVG(l.num_paginas)) AS media_paginas_por_curso
FROM aluno a

JOIN emprestimo e ON a.id_aluno = e.id_aluno
JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
JOIN livro l ON el.id_livro = l.id_livro

GROUP BY a.curso;


-- E5: Lista os autores que publicaram em mais de uma editora
-- Adaptado de "instituições que coletaram em mais de um reservatório"
-- Devolve o nome do autor e a contagem de editoras distintas que ele publicou, filtrando só os que têm mais de uma
SELECT
	a.nome AS autor,
	COUNT(DISTINCT l.id_editora) AS total_editoras
FROM autor a

JOIN livro l ON a.id_autor = l.id_autor

GROUP BY a.nome
HAVING COUNT(DISTINCT l.id_editora) > 1;