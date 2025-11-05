-- reduzindo capacidade de sinopse pela metade
ALTER TABLE Obra
MODIFY sinopse VARCHAR2(750);

-- permite que uma review não tenha nota, o que faz sentido dado o constraint em nota
ALTER TABLE Review
MODIFY Review.nota NUMBER NULL;

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
JOIN Usuario UsuarioSeguido ON Segue.id_seguido = UsuarioSeguido.id
WHERE UsuarioSeguido.login = 'jisbra';

SELECT Obra.nome, Obra.paisDeOrigem
FROM Obra
WHERE Obra.anoDeLancamento BETWEEN 2000 AND 2025 AND Obra.paisDeOrigem = 'Japão';

SELECT Obra.nome, Obra.duracao
FROM Obra
WHERE duracao BETWEEN 80 and 100;

-- Exibe o nome das obras que possuem mais artistas do que a Obra 1 --
SELECT O.nome, COUNT(O.id_artista) as qtd_artistas
From Obra O
WHERE O.id IN (
    SELECT p.id_obra
    FROM Participou p
    GROUP BY p.id_obra
    HAVING COUNT(id_artista) > (
        SELECT COUNT(id_artista)
        FROM Participou r
        WHERE r.id_obra = 1
    )
);

-- Exibe o nome das obras que não foram produzidas no EUA --
SELECT nome
FROM Obra
WHERE paisDeOrigem NOT LIKE 'Estados Unidos%';

-- Exibe o login do usuario mais seguido
SELECT u.login
FROM Usuario u
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
);

-- Exibe os nomes dos artistas e a quantidade de funcoes dos artistas que fizeram mais funcoes diferentes
SELECT a.nome, COUNT(DISTINCT f.funcao) as Qtd_funcoes_diferentes
FROM Funcoes f
RIGHT JOIN Artistas a
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
FROM Usuario u
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
            FROM Obra o
            INNER JOIN Entrada_do_Log e
            ON o.id = e.id_obra
            GROUP BY e.id_usuario
        )
    )
);

-- Exibe Obras com notas maior que a média
SELECT o.nome
FROM Obra o
INNER JOIN Review rw
ON o.id = rw.id_obra
GROUP BY o.id, o.nome
HAVING(AVG(rw.nota)) > (
    SELECT AVG(nota)
    FROM Review
);


-- Exibe os logins dos usuários os quais tem bio
SELECT login
FROM Usuario
WHERE bio IS NOT NULL;

-- Exibe titulo da lista que não tem obras de aventura
SELECT lp.titulo as Nome_da_lista
FROM Lista_Personalizada lp
GROUP BY lp.id, lp.titulo
HAVING lp.id != ALL (
    SELECT alp.id_lista
    FROM Adicionou_Lista_personalizada alp
    INNER JOIN Genero g
    ON alp.id_obra = g.id_obra
    WHERE g.genero LIKE '%Aventura%'
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

-- Exibe instantes que ocorreram as ações mais recentes na aplicação, seja review ou adição em lista, em ordem decrescente
SELECT rw.instante_avaliacao
FROM Review rw
UNION
SELECT Lp.data_adicao
FROM Adicionou_Lista_personalizada Lp
ORDER BY instante_avaliacao DESC;

-- ==========
--   Visões 
-- ==========

-- visão com todas as informações relevantes sobre uma obra
CREATE OR REPLACE VIEW ObraInfo AS
SELECT a.Titulo_obra, a.Tipo, a.Data_lancamento, a.Sinopse, a.Origem, a.Duracao, a.Nota_media, a.Curtidas, a.Vezes_Assistida, b.Estudios, b.Idiomas, b.Generos, b.Posters, b.Nome_artista
FROM (
    (SELECT o.id, o.nome as Titulo_obra, o.tipo as Tipo, o.dataLancamento as Data_lancamento, o.sinopse as Sinopse, o.paisDeOrigem as Origem, o.duracao as Duracao,
    (SELECT AVG(rw.nota)
    FROM Review rw
    WHERE rw.id_obra = o.id) as Nota_media,
    (SELECT COUNT(co.id_usuario)
    FROM Curtiu_Obra co
    WHERE co.id_obra = o.id) as Curtidas,
    (SELECT COUNT(Elog.instante_log)
    FROM Entrada_do_Log Elog
    WHERE Elog.id_obra = o.id) as Vezes_Assistida
    FROM Obra o)
) a
LEFT JOIN
(
    SELECT o2.id, es.nome as Estudios, im.idioma as Idiomas, g.genero as Generos, ps.poster as Posters, Art.Nome_artista as Nome_artista
    FROM Obra o2
    LEFT JOIN Estudio es ON es.id_obra = o2.id
    LEFT JOIN Idiomas im ON im.id_obra = o2.id
    LEFT JOIN Genero g ON g.id_obra = o2.id
    LEFT JOIN Posters ps ON ps.id_obra = o2.id
    LEFT JOIN (SELECT ar.nome as Nome_artista, pc.id_obra as id_art FROM Participou pc INNER JOIN Artistas ar ON pc.id_artista = ar.id) Art ON Art.id_art = o2.id
) b
ON a.id = b.id;


-- visão com Watchlist, seu proprietário e Obras que pertencem
CREATE OR REPLACE VIEW Watchlist_view AS
SELECT o.nome as Titulo_obra, u.login as Login_usuario, addwl.data_adicao
FROM Watchlist wl
LEFT JOIN Adicionou_Watchlist addwl ON addwl.id_lista = wl.id
LEFT JOIN Usuario u ON addwl.id_usuario = u.id
LEFT JOIN Obra o ON addwl.id_obra = o.id
;

-- Visão com informações relevantes sobre artista
CREATE OR REPLACE VIEW ArtistaInfo AS
SELECT a.nome, a.bio, a.data_nascimento, b.nacionalidade, f.funcao, Obras_participou.Titulo_obra
FROM Artistas a
LEFT JOIN Funcoes f ON f.id_artista = a.id
LEFT JOIN Nacionalidades n ON n.id_artista = a.id
LEFT JOIN (SELECT o.nome as Titulo_obra, p.id_artista as id_partObra FROM Participou p INNER JOIN Obra o ON p.id_obra = o.id) Obras_participou ON Obras_participou.id_partObra = a.id
;

-- ================
--  Grant & Revoke
-- ================

-- Permissões e proibições para o usuario comum da aplicação
/*GRANT SELECT ON ObraInfo TO usuario_aplicacao;
GRANT SELECT ON ArtistasInfo TO usuario_aplicacao;
REVOKE ALL ON Obra TO usuario_aplicacao;
REVOKE INSERT, UPDATE ON Usuario TO usuario_aplicacao;
REVOKE UPDATE ON Entrada_do_Log TO usuario_aplicacao;

-- Permissões do Administrador
GRANT DBA TO admin_aplicacao;
*/

