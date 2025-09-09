INSERT INTO tbCurso
VALUES
(1, 'Engenharia');

INSERT INTO tbAluno
VALUES
(1, 'João Silva', 22, 1);

INSERT INTO tbCurso
VALUES 
(2, 'Análise de Sistemas'),
(3, 'Computação'),
(4, 'MAtemática');

INSERT INTO tbAluno
VALUES
(2, 'Maria Souza', 20, 3),
(3, 'Carlos Lima', 25, 4);

INSERT INTO tbAluno
VALUES
(4, 'Marina Lima', 16, 3),
(5, 'Lucas Pereira', 18, 3);

INSERT INTO tbNota(idNota, id_aluno, disc, nota)
VALUES
(001, 1, 'Matemática', 8.5),
(002, 2, 'História', 9);


UPDATE tbAluno SET idadeAluno = 16
	WHERE nomeAluno = 'João Silva';
	
UPDATE tbAluno SET idadeAluno = 17, id_curso = 1
	WHERE nomeALuno = 'Marina Lima';