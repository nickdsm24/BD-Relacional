CREATE TABLE autor (
 id_autor SERIAL PRIMARY KEY,
 nome VARCHAR(100) NOT NULL
 );
 
 CREATE TABLE livro (
 id_livro SERIAL PRIMARY KEY,
 titulo VARCHAR(150) NOT NULL,
 ano_publicacao INT,
 id_autor INT REFERENCES autor(id_autor)
 );
 
 CREATE TABLE aluno (
 id_aluno SERIAL PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 curso VARCHAR(100) NOT NULL
 );
 
CREATE TABLE emprestimo(
id_emprestimo SERIAL PRIMARY KEY,
data_emprestimo DATE NOT NULL,
id_aluno INT,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
 );

CREATE TABLE emprestimoLivro(
id_emprestimo INT,
id_livro INT,
FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo),
FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);
 
INSERT INTO autor (nome)
VALUES
('J. R. R. Tolkien'),
('Machado de Assis'),
('Clarice Lispector');
 
INSERT INTO livro (titulo, ano_publicacao, id_autor)
VALUES
('O Senhor dos Anéis', 1954, 1),
('Dom Casmurro', 1899, 2),
('A Hora da Estrela', 1977, 3),
('O Hobbit', 1937, 1);
 
INSERT INTO aluno (nome, curso)
VALUES
('Ana Souza', 'Sistemas de Informação'),
('Bruno Silva', 'Engenharia de Software');
 
INSERT INTO emprestimo (data_emprestimo, id_aluno)
VALUES
('2025-08-20', 1),
('2025-08-21', 2);

INSERT INTO emprestimoLivro (id_emprestimo, id_livro)
VALUES
(1, 1),  -- Ana Souza pegou O Senhor dos Anéis
(1, 2),  -- Ana Souza pegou Dom Casmurro
(2, 3);  -- Bruno Silva pegou A Hora da Estrela