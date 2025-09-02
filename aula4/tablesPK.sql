-- Bioma
CREATE TABLE IF NOT EXISTS tbBioma( 
 idBioma INT PRIMARY KEY,  
 areaAtingida VARCHAR(100),  
 nomeBioma VARCHAR(100) 
);

-- Satélite
CREATE TABLE IF NOT EXISTS tbSatelite( 
 idSatelite INT PRIMARY KEY,  
 nomesSatelite VARCHAR(100) 
);


-- Alerta
CREATE TABLE IF NOT EXISTS tbAlerta( 
 idAlerta INT PRIMARY KEY,  
 nivelAlerta INT 
);


-- Usuário
CREATE TABLE IF NOT EXISTS tbUser( 
 idUser INT PRIMARY KEY,  
 nomeUser VARCHAR(200),  
 ContatoUser VARCHAR(200) 
);


-- Queimada
CREATE TABLE IF NOT EXISTS tbQueimada( 
 idFogo INT PRIMARY KEY,  
 dataHora TIMESTAMP,  
 lat_lon VARCHAR(200)
);


-- Localizações (CEP)
CREATE TABLE IF NOT EXISTS tbCEP( 
 idLoc INT PRIMARY KEY,  
 estado VARCHAR(100),  
 cidade VARCHAR(200) 
);