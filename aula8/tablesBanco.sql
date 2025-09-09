CREATE TABLE IF NOT EXISTS tbCliente(
idCliente INT PRIMARY KEY,
	nomeCliente VARCHAR(150) NOT NULL,
	cpf VARCHAR(15) UNIQUE NOT NULL,
	habitat TEXT,
	fone VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS tbConta(
idConta INT PRIMARY KEY,
	nroConta VARCHAR(12) UNIQUE NOT NULL,
	saldo DECIMAL(10,2) DEFAULT 0,
	id_Cliente INT REFERENCES tbCliente(idCliente)
);

CREATE TABLE IF NOT EXISTS tbTrans(
idTrans INT PRIMARY KEY,
	id_Conta INT REFERENCES tbConta(idConta) ON DELETE CASCADE,
	tipo VARCHAR(15) CHECK(tipo IN('Depósito', 'Saque', 'Transferência')),
	valor DECIMAL(10,2) NOT NULL CHECK(valor > 0),
	dataTrans TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	destinoTrans INT REFERENCES tbConta(idConta)
);