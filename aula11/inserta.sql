INSERT INTO autor (nome)
VALUES
('J. R. R. Tolkien'),
('Machado de Assis'),
('George Orwell'),
('Clarice Lispector');

INSERT INTO editora (nome)
VALUES
('HarperCollins'),
('Companhia das Letras'),
('Penguin Books');

INSERT INTO livro (titulo, ano_publicacao, num_paginas, id_autor, id_editora)
VALUES
('O Senhor dos Anéis', 1954, 1200, 1, 1),
('O Hobbit', 1937, 310, 1, 1),
('Dom Casmurro', 1899, 256, 2, 2),
('Memórias Póstumas de Brás Cubas', 1881, 220, 2, 2),
('1984', 1949, 328, 3, 3),
('A Revolução dos Bichos', 1945, 112, 3, 2), -- Orwell publicando por outra editora (para o Exercício 5)
('A Hora da Estrela', 1977, 88, 4, 2);

INSERT INTO aluno (nome, curso)
VALUES
('Ana Souza', 'Sistemas de Informação'),
('Bruno Silva', 'Engenharia de Software'),
('Carla Dias', 'Sistemas de Informação'),
('Daniel Moreira', 'Ciência da Computação');

INSERT INTO emprestimo (data_emprestimo, id_aluno)
VALUES
('2025-08-20', 1), -- Ana
('2025-08-21', 2), -- Bruno
('2025-08-22', 1), -- Ana
('2025-08-23', 3); -- Carla

INSERT INTO emprestimoLivro (id_emprestimo, id_livro)
VALUES
(1, 1), -- Ana pegou O Senhor dos Anéis
(1, 3), -- Ana pegou Dom Casmurro
(2, 5), -- Bruno pegou 1984
(3, 7), -- Ana pegou A Hora da Estrela
(4, 6); -- Carla pegou A Revolução dos Bichos