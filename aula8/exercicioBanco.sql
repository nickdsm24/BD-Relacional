
INSERT INTO tbCliente
VALUES
(3, 'Capitão Jack Sparrow', '172.017.383-91', 'Mar do Caribe, ilha Tortuga', '(17) 1728-5225');

INSERT INTO tbConta
VALUES
(3, '52257-7', 5200.00, 3);

-- Transferência da conta ciente Marina Oliveira (id = 2) para conta Capitão Jack Sparrow (id = 3)
INSERT INTO tbTrans (idTrans, id_Conta, tipo, valor, destinoTrans)
VALUES
(4, 2, 'Transferência', 100.00, 3);

UPDATE tbConta
	SET saldo = saldo - 100.00
	WHERE idConta = 3;
	
SELECT * FROM tbConta;