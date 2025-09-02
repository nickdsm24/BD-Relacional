-- tbBioma
SELECT * FROM tbBioma;

-- tbSatelite
SELECT * FROM tbSatelite;

-- tbAlerta
SELECT * FROM tbAlerta
	WHERE idAlerta >= 2;

-- tbUser
SELECT * FROM tbUser
	WHERE nomeUser LIKE '%a%';