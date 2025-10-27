-- Inserts adicionais

-- Bruno pega um livro do Tolkien
INSERT INTO emprestimo (data_emprestimo, id_aluno) VALUES ('2025-08-25', 2);

INSERT INTO emprestimoLivro (id_emprestimo, id_livro) VALUES (5, 2);

-- Daniel pega um livro que NÃO é do Tolkien
INSERT INTO emprestimo (data_emprestimo, id_aluno) VALUES ('2025-08-26', 4);

INSERT INTO emprestimoLivro (id_emprestimo, id_livro) VALUES (6, 3); -- Livro 3 = Dom Casmurro
