-- E8
SELECT idCliente, nomeCliente, cidadeCliente FROM tbCliente;

-- E9
SELECT nomeGame, ano FROM tbGame
	WHERE ano > '2020-12-31';
	
-- E10
SELECT SUM(quantidade) AS total_buy_games
FROM tbBuy_Game;