
-- Exemplos:
SELECT l.titulo, a.nome AS autor
FROM livro l
INNER JOIN autor a ON l.id_autor = a.id_autor;

SELECT COUNT(*) AS total_emprestimos
FROM emprestimo;

SELECT al.nome AS aluno,
l.titulo AS livro
FROM emprestimo e
INNER JOIN aluno al ON e.id_aluno = al.id_aluno
INNER JOIN emprestimoLivro el ON e.id_emprestimo = e.id_emprestimo
INNER JOIN livro l ON el.id_livro = l.id_livro;

-- LEFT JOIN
SELECT a.nome,
l.titulo
FROM autor a
	LEFT JOIN livro l ON a.id_autor = l.id_autor;

-- RIGHT JOIN
SELECT l.titulo,
a.nome
FROM livro l
	RIGHT JOIN autor a ON l.id_autor = a.id_autor;
	
-- 3 TABELAS
SELECT a.nome AS aluno,
l.titulo AS livro,
au.nome As autor,
e.data_emprestimo
FROM emprestimo e
	INNER JOIN aluno a ON e.id_aluno = a.id_aluno
	INNER JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
	INNER JOIN livro l ON el.id_livro = l.id_livro
	INNER JOIN autor au ON l.id_autor = au.id_autor;