
-- updates no usuario --
UPDATE Usuario
SET nome = 'Fernandes', login = 'afolGames'
WHERE id = 1;

UPDATE Usuario
SET cidade = 'Olinda'
WHERE login = 'icbo';

-- update lista personalizada --
UPDATE Lista_Personalizada
SET visibilidade = '0'
WHERE id = 3;

UPDATE Lista_Personalizada
SET visibilidade = '1'
WHERE id = 1; 

-- delete curtida de obra --
DELETE FROM Curtiu_Obra
WHERE id_usuario = 1, id_obra = 14;

DELETE FROM Curtiu_Obra
WHERE id_usuario = 3, id_obra = 1;

DELETE FROM Curtiu_Obra
WHERE id_usuario = 9, id_obra = 3;

-- deleta filmes maiores do que 2 horas das listas personalizadas do usuário 12 --
DELETE FROM Lista_Personalizada
WHERE id_usuario = 12 
AND id_obra IN (
    SELECT id FROM Obra
    WHERE duracao > 120
);

-- deleta logs os quais tenham seus registros com mais do que 10 anos --
DELETE FROM Entrada_do_Log l
WHERE l.instante_log < ADD_MONTHS(SYSTIMESTAMP, -120);

ALTER TABLE Entrada_do_log
RENAME COLUMN Entrada_do_log TO Log_Entrada;

CREATE INDEX idx_obra
ON Obra(nome);

CREATE INDEX idx_usuario
ON Usuario(nome);

SELECT Usuario.nome, Usuario.login
FROM Usuario
JOIN Segue ON Usuario.id = Segue.id_seguidor
JOIN Usuario AS UsuarioSeguido ON Segue.id_seguido = UsuarioSeguido.id
WHERE UsuarioSeguido.login = 'jisbra';

SELECT Obra.nome, Obra.paisDeOrigem
FROM Obra
WHERE Obra.anoDeLancamento BETWEEN 2000 AND 2025 AND Obra.paisDeOrigem = 'Japão';

SELECT Obra.nome, Obra.duracao
FROM Obra
WHERE duracao BETWEEN 80 and 100