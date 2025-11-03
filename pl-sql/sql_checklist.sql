
-- updates no usuario --
UPDATE Usuario
SET nome = 'Fernandes', login = 'afolGames'
WHERE id = 1;

UPDATE Usuario
SET cidade = 'Olinda'
WHERE login = 'icbo';

-- update função do artista 15 na obra 8 --
UPDATE Funcoes
SET funcao = 'Diretor'
WHERE id_obra = 8 AND id_artista = 15;

-- Atualiza a visibilidade da lista personalizada --
UPDATE Lista_Personalizada
SET visibilidade = '0'
WHERE id = 3;

UPDATE Lista_Personalizada
SET visibilidade = '1'
WHERE id = 1; 

-- delete curtida de obra --
DELETE FROM Curtiu_Obra
WHERE id_usuario = 1 AND id_obra = 14;

DELETE FROM Curtiu_Obra
WHERE id_usuario = 3 AND id_obra = 1;

DELETE FROM Curtiu_Obra
WHERE id_usuario = 9 AND id_obra = 3;

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

/*ALTER TABLE Entrada_do_log
RENAME COLUMN Entrada_do_log TO Log_Entrada;*/

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

-- Exibe o nome das obras que possuem mais artistas do que a Obra 1 --
SELECT O.nome, COUNT(O.id_artista) as qtd_artistas
From Obra as O
WHERE O.id IN (
    SELECT p.id_obra
    FROM Participou as p
    GROUP BY p.id_obra
    HAVING COUNT(id_artista) > (
        SELECT COUNT(id_artista)
        FROM Participou as r
        WHERE r.id_obra = 1
    )
);

-- Exibe o nome das obras que não foram produzidas no EUA --
SELECT nome
FROM Obra
WHERE paisDeOrigem NOT LIKE 'Estados Unidos%';

-- Exibe o login do usuario mais seguido
SELECT u.login
FROM Usuario as u
WHERE u.id IN (
    SELECT id_seguido
    FROM Segue
    GROUP BY id_seguido
    HAVING COUNT(id_seguidor) = (
        SELECT MAX(contagem)
        FROM (
            SELECT COUNT(id_seguidor) as contagem
            FROM Segue
            GROUP BY id_seguido
        )
    )
)

-- Exibe os nomes dos artistas e a quantidade de funcoes dos artistas que fizeram mais funcoes diferentes
SELECT a.nome, COUNT(DISTINCT f.funcao) as Qtd_funcoes_diferentes
FROM Funcoes as f
INNER JOIN Artistas as a
ON f.id_artista = a.id
GROUP BY a.nome
ORDER BY COUNT(DISTINCT f.funcao) DESC;

-- Exibe o titulo da lista com menos curtidas entre aquelas que possuem ao menos 1
SELECT titulo
FROM Lista_Personalizada
WHERE id IN (
    SELECT id_lista
    FROM Curtiu_Lista_Personalizada
    GROUP BY id_lista
    HAVING COUNT(id_usuario) = (
        SELECT MIN(cont)
        FROM (
            SELECT COUNT(id_usuario) as cont
            FROM Curtiu_Lista_Personalizada
            GROUP BY id_lista
        )
    )  
);

-- Exibe o login do usuario que mais passou tempo assistindo
SELECT u.login
FROM Usuario as u
WHERE u.id IN (
    SELECT id_usuario
    FROM Obra
    INNER JOIN Entrada_do_Log
    ON id = id_obra
    GROUP BY id_usuario
    HAVING SUM(duracao) IN (
        SELECT MAX(tempo_total_assistido)
        FROM (
            SELECT SUM(duracao) as tempo_total_assistido
            FROM Obra as o
            INNER JOIN Entrada_do_Log as e
            ON o.id = e.id_obra
            GROUP BY e.id_usuario
        )
    )
);

-- Exibe Obras com notas maior que a média
    SELECT o.nome
    FROM Obra AS o
    INNER JOIN Review AS rw
    ON o.id = rw.id_obra
    GROUP BY o.id, o.nome
    HAVING(AVG(rw.nota)) > (
        SELECT AVG(nota)
        FROM Review
    );


-- obras com duração maior que qualquer curta metragem (ANY)
SELECT Obra.nome, Obra.duracao
FROM Obra
WHERE Obra.duracao > ANY (
    SELECT Obra.duracao
    FROM Obra
    WHERE Obra.tipo = 'Curta-Metragem'
);


-- artistas que participaram de pelo menos uma obra no reino unido (ANY)
SELECT Artistas.nome
FROM Artistas
WHERE Artistas.id IN (
    SELECT Participou.id_artista
    FROM Participou
    WHERE Participou.id_obra = ANY (
        SELECT Obra.id
        FROM Obra
        WHERE Obra.paisDeOrigem = 'Reino Unido'
    )
);

-- os usuários com mais seguidores que todos os usuários de recife (ALL)

SELECT u1.id, u1.nome
FROM Usuario u1
WHERE u1.seguidores > ALL (
    SELECT u2.seguidores
    FROM Usuario u2
    WHERE u2.cidade = 'Recife'
);
