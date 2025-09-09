

CREATE TABLE IF NOT EXISTS tbCliente(
idCliente INT PRIMARY KEY,
	nomeCliente VARCHAR(150) NOT NULL,
	cpf VARCHAR(15) UNIQUE NOT NULL,
	habitat TEXT,
	fone VARCHAR(15)
);

INSERT INTO tbCliente
VALUES
(1, 'João Silva', '123.456.789-00', 'Rua A, 123', '(00) 98765-4321'),
(2, 'Marina Oliveira', '009.876,543-21', 'Rua B, 321', '(12) 34567-8900');

CREATE TABLE IF NOT EXISTS tbConta(
idConta INT PRIMARY KEY,
	nroConta VARCHAR(12) UNIQUE NOT NULL,
	saldo DECIMAL(10,2) DEFAULT 0,
	id_Cliente INT REFERENCES tbCliente(idCliente)
);

INSERT INTO tbConta
VALUES
(1, '45678-2', 1500.00,01),
(2, '78923-4', 2300.00, 2);


CREATE TABLE IF NOT EXISTS tbTrans(
idTrans INT PRIMARY KEY,
	id_Conta INT REFERENCES tbConta(idConta) ON DELETE CASCADE,
	tipo VARCHAR(15) CHECK(tipo IN('Depósito', 'Saque', 'Transferência')),
	valor DECIMAL(10,2) NOT NULL CHECK(valor > 0),
	dataTrans TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	destinoTrans INT REFERENCES tbConta(idConta)
);

INSERT INTO tbTrans(idTrans, id_Conta, tipo, valor)
VALUES
(1, 001, 'Depósito', 500.00),
(2, 002, 'Saque', 200.00);


INSERT INTO tbTrans(idTrans, id_Conta, tipo, valor, destinoTrans)
VALUES
(3, 002, 'Transferência', 300.00, 2);


-- Exercícios

-- Clientes totais
SELECT COUNT(*) AS total_clientes
FROM tbCliente;

-- Saldo total
SELECT SUM(saldo) AS saldo_total
FROM tbConta;

-- Médias de saques
SELECT AVG(valor) AS media_saques
FROM tbTrans
WHERE tipo = 'Saque';
