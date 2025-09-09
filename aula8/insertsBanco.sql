INSERT INTO tbCliente
VALUES
(1, 'João Silva', '123.456.789-00', 'Rua A, 123', '(00) 98765-4321'),
(2, 'Marina Oliveira', '009.876,543-21', 'Rua B, 321', '(12) 34567-8900');

INSERT INTO tbConta
VALUES
(1, '45678-2', 1500.00, 1),
(2, '78923-4', 2300.00, 2);

INSERT INTO tbTrans(idTrans, id_Conta, tipo, valor)
VALUES
(1, 001, 'Depósito', 500.00),
(2, 002, 'Saque', 200.00);


INSERT INTO tbTrans(idTrans, id_Conta, tipo, valor, destinoTrans)
VALUES
(3, 002, 'Transferência', 300.00, 2);