
CREATE TABLE autor(
  id_autor SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE editora(
  id_editora SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE livro(
  id_livro SERIAL PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  ano_publicacao INT,
  num_paginas INT,
  id_autor INT REFERENCES autor(id_autor),
  id_editora INT REFERENCES editora(id_editora)
);

CREATE TABLE aluno(
  id_aluno SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  curso VARCHAR(100) NOT NULL
);

CREATE TABLE emprestimo(
  id_emprestimo SERIAL PRIMARY KEY,
  data_emprestimo DATE NOT NULL,
  id_aluno INT REFERENCES aluno(id_aluno)
);

CREATE TABLE emprestimoLivro(
  id_emprestimo INT REFERENCES emprestimo(id_emprestimo),
  id_livro INT REFERENCES livro(id_livro)
);


