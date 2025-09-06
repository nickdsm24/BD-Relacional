
-- E3
INSERT INTO tbLoja
VALUES
(1, 'Xbox, o console sem console', 'Passe e Fica(RN)'),
(2, 'PlayStation, tome remaster e remake de TLOU', 'Coxixola(PB)'),
(3, 'Nintendo, tome processo de brinde por falar de Mário', 'Ipupiara(BA)');

-- E4
INSERT INTO tbCliente
VALUES
(1, 'Phil Spencer', 'SpencerPhil@Outlook.com', 'Ridgefield, Washington (EUA)'),
(2, 'Hideaki Nishino', 'HNps@gmail.com', 'keio, Minato (Japão)'),
(3, 'Shuntaro Furukawa', 'BigN@yahoo.com', 'Tóquio (Japão)');

-- E5
INSERT INTO tbGame
VALUES
(1, 'Shadow of the Colossus', '2005-10-18', 'Ação, Aventura, Quebra-cabeça'),
(2, 'Assassins Creed IV: Black Flag', '2013-10-29', 'Ação, Aventura, Stealth, Naval'),
(3, 'A Memoir Blue', '2022-03-24', 'Aventura-narrativa, Poema-interativo, Point-and-Click');


/
-- E6
INSERT INTO tbBuy
VALUES
(1, '2025-08-14', 1, 1),
(2, '2024-08-29', 3, 2),
(3, '2023-01-02', 2, 3);
*/


-- E7
INSERT INTO tbBuy_Game
VALUES
-- idCompra 2
(2, 3, 2),
(2, 1, 1),
-- idCompra 1
(1, 2, 1),
(1, 1, 2),
-- idCompra 3
(3, 2, 1),
(3, 3, 1);
