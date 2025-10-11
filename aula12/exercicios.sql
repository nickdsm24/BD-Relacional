-- Passo 2 (nomes dos alunos)

SELECT
	nome
FROM aluno;

-- Passo 3 (calcular média de páginas dos livros emprestados)

SELECT
	a.nome,
	(SELECT AVG(l.num_pgs)
	 FROM emprestimo e
	 	JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
		JOIN livro l ON el.id_livro = l.id_livro
	WHERE e.id_aluno = a.id_aluno) AS media_paginas
FROM aluno a;

-- Passo 4 (subconsultas de minímo e máximo)

SELECT
 	a.nome,
	(
		SELECT AVG(l.num_pgs)
		FROM emprestimo e
		JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
		JOIN livro l ON el.id_livro = l.id_livro
		WHERE e.id_aluno = a.id_aluno) AS media_paginas,
	(
		SELECT MIN(l.num_pgs)
		FROM emprestimo e
		JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
		JOIN livro l ON el.id_livro = l.id_livro
		WHERE e.id_aluno = a.id_aluno) AS menor_paginas,
	(
		SELECT MAX(l.num_pgs)
		FROM emprestimo e
		JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
		JOIN livro l ON el.id_livro = l.id_livro
		WHERE e.id_aluno = a.id_aluno) AS maior_paginas
FROM aluno a;
