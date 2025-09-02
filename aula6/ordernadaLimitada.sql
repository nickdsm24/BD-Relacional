-- tbQueimada
SELECT * FROM tbQueimada
	ORDER BY dataHora ASC;


-- tbCEP
SELECT * FROM tbCEP
	ORDER BY estado ASC;
	
-- tBOnde
SELECT * FROM tbOnde
	LIMIT 2;
	
-- tbMensagem
SELECT * FROM tbMensagem
 ORDER BY textoMsg, idDado DESC
 LIMIT 2;
	