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