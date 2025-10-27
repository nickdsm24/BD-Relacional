-- E2:
-- Subconsulta: Quais IDs de aluno já pegaram um livro do autor 1?
SELECT DISTINCT
	e.id_aluno
FROM emprestimo e

JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
JOIN livro l ON el.id_livro = l.id_livro

WHERE l.id_autor = 1;

-- E3:
-- Seleciona os dados dos alunos cujo ID está na lista (1, 2)
SELECT *
FROM aluno
	WHERE id_aluno IN (
  -- Início da Subconsulta
  SELECT DISTINCT
  	e.id_aluno
  FROM emprestimo e
  
  JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
  JOIN livro l ON el.id_livro = l.id_livro
  
  WHERE l.id_autor = 1
  -- Fim da Subconsulta
);

-- E4:
SELECT *
FROM aluno a
WHERE EXISTS (
  -- Início da Subconsulta Correlacionada
  SELECT 1
  FROM emprestimo e
  
  JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
  JOIN livro l ON el.id_livro = l.id_livro
  
  	WHERE l.id_autor = 1 AND e.id_aluno = a.id_aluno
  -- Fim da Subconsulta
);

-- E5:
EXPLAIN ANALYZE
SELECT *
FROM aluno
WHERE id_aluno IN (
  	SELECT DISTINCT
	  	e.id_aluno
  	FROM emprestimo e
	  
  	JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
  	JOIN livro l ON el.id_livro = l.id_livro
	  
  	WHERE l.id_autor = 1
);

EXPLAIN ANALYZE
SELECT *
FROM aluno a
WHERE EXISTS (
  SELECT 1
  FROM emprestimo e
  JOIN emprestimoLivro el ON e.id_emprestimo = el.id_emprestimo
  JOIN livro l ON el.id_livro = l.id_livro
  WHERE l.id_autor = 1
    AND e.id_aluno = a.id_aluno
);

