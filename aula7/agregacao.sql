-- Quantidade de queimada por estado
SELECT c.estado, COUNT(*) AS total_queimadas FROM tbOnde o
	JOIN tbCEP c ON o.idLoc = c.idLoc
	GROUP BY c.estado;
	
-- Média de alerta por satélite
SELECT s.nomesSatelite, AVG(a.nivelAlerta) AS media_alerta FROM tbDados d
	JOIN tbSatelite s ON d.idSatelite = s.idSatelite
	JOIN tbAlerta a ON d.idAlerta = a.idAlerta
	GROUP BY s.nomesSatelite;
	
-- Satélite com mais de 1 observação (somente 1 observação por satelite)
SELECT s.nomesSatelite, COUNT(*) AS total_obs FROM tbObserva o
	JOIN tbSatelite s ON o.idSatelite = s.idSatelite
	GROUP BY s.nomessatelite
	HAVING COUNT (*) >= 1;
	
-- Estados com média de alertas
SELECT c.estado, AVG(a.nivelAlerta) AS media_alerta
FROM tbMensagem m
	JOIN tbDados d ON m.idDado = d.idDado
	JOIN tbAlerta a ON d.idAlerta = a.idAlerta
	JOIN tbOnde o ON d.idSatelite = o.idOnde
	JOIN tbCEP c on o.idLoc = c.idLoc
	GROUP BY c.estado
	HAVING AVG(a.nivelAlerta) > 1;