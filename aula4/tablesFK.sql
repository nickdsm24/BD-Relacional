-- Onde aconteceu/ocorreu
CREATE TABLE IF NOT EXISTS tbOnde (
  idOnde INT,
  idBioma INT,
  idLoc INT,
  idFogo INT,
  PRIMARY KEY (idOnde),
  FOREIGN KEY (idBioma) REFERENCES tbBioma(idBioma),
  FOREIGN KEY (idLoc) REFERENCES tbCEP(idLoc),
  FOREIGN KEY (idFogo) REFERENCES tbQueimada(idFogo)
);

-- Observações por satélite
CREATE TABLE IF NOT EXISTS tbObserva (
  idObs INT PRIMARY KEY,
  idFogo INT,
  idSatelite INT,
  CONSTRAINT fk_obs_fogo FOREIGN KEY (idFogo) REFERENCES tbQueimada(idFogo),
  CONSTRAINT fk_obs_satelite FOREIGN KEY (idSatelite) REFERENCES tbSatelite(idSatelite)
);

-- Dados Coletados
CREATE TABLE IF NOT EXISTS tbDados (
  idDado INT PRIMARY KEY,
  conteudoDado VARCHAR(200),
  idAlerta INT,
  idSatelite INT,
  CONSTRAINT fk_dado_alerta FOREIGN KEY (idAlerta) REFERENCES tbAlerta(idAlerta),
  CONSTRAINT fk_dado_satelite FOREIGN KEY (idSatelite) REFERENCES tbSatelite(idSatelite)
);

-- Mensagens
CREATE TABLE IF NOT EXISTS tbMensagem (
  idMsg INT PRIMARY KEY,
  textoMsg VARCHAR(300),
  idDado INT,
	FOREIGN KEY (idDado) REFERENCES tbDados(idDado)
);