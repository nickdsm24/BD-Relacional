-- Exemplos
SELECT tbAluno.nomeALuno, tbNota.disc, tbnota.nota
FROM tbAluno
	INNER JOIN tbNota ON tbAluno.idAluno = tbNota.id_Aluno;
	
SELECT tbAluno.nomeALuno, tbNota.disc, tbnota.nota
FROM tbAluno
	LEFT JOIN tbNota ON tbAluno.idAluno = tbNota.id_Aluno;


-- Exercicios
INSERT INTO tbAluno
VALUES
(6, 'Carlos ALmeida', 18, 1),
(7, 'Fernanda Costa', 27, 2);


SELECT tbAluno.nomeAluno, tbCurso.nomeCurso
FROM tbAluno
	INNER JOIN tbCurso ON tbAluno.id_Curso = tbCurso.idCurso;