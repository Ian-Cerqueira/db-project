-- LONGA-METRAGEM
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES
('2001: Uma Odisseia no Espaço', 'longa-metragem', '1968-04-02', 'Equipe espacial descobre mistério durante viagem a Júpiter.', 'Reino Unido', 149),
('Anora', 'longa-metragem', '2024-05-20', 'Stripper russa no Brooklyn vive romance inesperado com herdeiro de oligarca.', 'EUA', 110),
('Assassinos da Lua das Flores', 'longa-metragem', '2023-10-19', 'Crimes em tribo Osage na década de 1920.', 'EUA', 206),
('A Viagem de Chihiro', 'longa-metragem', '2001-07-20', 'Menina entra em mundo mágico para salvar pais.', 'Japão', 125),
('Faça a Coisa Certa', 'longa-metragem', '1989-06-30', 'Tensões raciais em dia quente no Brooklyn.', 'EUA', 120),
('Moonlight: Sob a Luz do Luar', 'longa-metragem', '2016-10-21', 'Jovem enfrenta desafios em Miami.', 'EUA', 111),
('O Gato das Botas: O Último Desejo', 'longa-metragem', '2022-12-21', 'Gato busca desejo para recuperar suas nove vidas.', 'EUA', 102),
('O Poderoso Chefão', 'longa-metragem', '1972-03-24', 'Saga da família mafiosa Corleone.', 'EUA', 175),
('Oppenheimer', 'longa-metragem', '2023-07-20', 'Criador da bomba atômica lida com dilemas.', 'EUA', 180),
('Parasita', 'longa-metragem', '2019-05-30', 'Família se infiltra em casa de ricos.', 'Coreia do Sul', 132),
('Pulp Fiction: Tempo de Violência', 'longa-metragem', '1994-09-10', 'Histórias interligadas do submundo de LA.', 'EUA', 154),
('Rashomon', 'longa-metragem', '1950-08-25', 'Crime contado sob diferentes perspectivas.', 'Japão', 88),
('Senna: O Brasileiro, O Herói, O Campeão', 'longa-metragem', '2010-10-07', 'Documentário sobre Ayrton Senna.', 'Reino Unido', 106);

-- SERIADO
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES
('Breaking Bad - A Química do Mal', 'seriado', '2008-01-20', 'Professor faz metanfetamina após diagnóstico de câncer.', 'EUA', 2953),
('O Segredo Além do Jardim', 'seriado', '2014-11-03', 'Dois irmãos em aventura surreal.', 'EUA', 109),
('Lost', 'seriado', '2004-09-22', 'Sobreviventes de acidente lutam em ilha.', 'EUA', 5460),
('Puella Magi Madoka Magica', 'seriado', '2011-01-07', 'Garotas recebem poderes mágicos.', 'Japão', 300);

-- CURTA-METRAGEM
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES
('Ilha das Flores', 'curta-metragem', '1989-03-11', 'Curta de sátira sobre desigualdade.', 'Brasil', 13),
('Um Cão Andaluz', 'curta-metragem', '1929-06-06', 'Surrealismo com imagens impactantes.', 'França/Espanha', 16),
('World of Tomorrow', 'curta-metragem', '2015-01-22', 'Viagem de garota ao futuro distante.', 'EUA', 17);

INSERT INTO Idiomas (id_Obra, idioma) VALUES
(1, 'Inglês'), (1, 'Russo'), (1, 'Francês'),
(2, 'Inglês'), (2, 'Russo'),
(3, 'Inglês'),
(4, 'Japonês'),
(5, 'Inglês'),
(6, 'Inglês'),
(7, 'Inglês'),
(8, 'Inglês'),
(9, 'Inglês'),
(10, 'Coreano'),
(11, 'Inglês'),
(12, 'Japonês'),
(13, 'Inglês'), (13, 'Português'),
(14, 'Inglês'),
(15, 'Inglês'),
(16, 'Inglês'),
(17, 'Japonês'),
(18, 'Português'),
(19, 'Francês'), (19, 'Espanhol'),
(20, 'Inglês');

INSERT INTO Genero (id_Obra, genero) VALUES
(1, 'Ficção Científica'), (1, 'Aventura'),
(2, 'Drama'), (2, 'Comédia'),
(3, 'Drama'), (3, 'Suspense'), (3, 'Crime'),
(4, 'Animação'), (4, 'Aventura'), (4, 'Fantasia'),
(5, 'Drama'), (5, 'Comédia'),
(6, 'Drama'),
(7, 'Animação'), (7, 'Aventura'), (7, 'Comédia'),
(8, 'Drama'), (8, 'Crime'),
(9, 'Drama'), (9, 'Biografia'), (9, 'Histórico'),
(10, 'Suspense'), (10, 'Drama'), (10, 'Comédia'),
(11, 'Crime'), (11, 'Drama'),
(12, 'Drama'), (12, 'Mistério'), (12, 'Crime'),
(13, 'Documentário'), (13, 'Esporte'), (13, 'Biografia'),
(14, 'Crime'), (14, 'Drama'), (14, 'Suspense'),
(15, 'Animação'), (15, 'Aventura'), (15, 'Fantasia'),
(16, 'Drama'), (16, 'Mistério'), (16, 'Aventura'),
(17, 'Animação'), (17, 'Fantasia'), (17, 'Drama'),
(18, 'Documentário'),
(19, 'Surrealismo'),
(20, 'Animação'), (20, 'Ficção Científica');

-- POSTERS
INSERT INTO Posters (id_obra, poster) VALUES
(1, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ve72VxNqjGM69Uky4WTo2bK6rfq.jpg'),
(1, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zmmYdPa8Lxx999Af9vnVP4XQ1V6.jpg'),
(1, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nRsTL3djLDBcnMNoBugqobFe7ii.jpg'),
(2, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/davwb31ZFhBUrZuRlxk8meRfATI.jpg'),
(3, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dB6Krk806zeqd0YNp2ngQ9zXteH.jpg'),
(4, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg'),
(5, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/63rmSDPahrH7C1gEFYzRuIBAN9W.jpg'),
(6, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rcICfiL9fvwRjoWHxW8QeroLYrJ.jpg'),
(7, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg'),
(8, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3bhkrj58Vtu7enYsRolD1fZdja1.jpg'),
(9, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg'),
(10, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg'),
(11, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vQWk5YBFWF4bZaofAbv0tShwBvQ.jpg'),
(12, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vL7Xw04nFMHwnvXRFCmYYAzMUvY.jpg'),
(13, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nZbLCbRoP6iJq5sr8daHQzjnzFh.jpg'),
(14, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ztkUQFLlC19CCMYHW9o1zWhJRNq.jpg'),
(15, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/m3lU8n7WxzMecxKZcqhq5y5ESy.jpg'),
(16, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/og6S0aTZU6YUJAbqxeKjCa3kY1E.jpg'),
(17, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9Leopb4OB9j9FkP5JNHRZZlPPdg.jpg'),
(18, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cghvWnWK5AuIKPY92YRV9tCeNhw.jpg'),
(19, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/obvE7ElAvCUhKtWFwDSvNbPw9PV.jpg'),
(20, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5s7DSOek7Bk2CvcG1zX01bJzJ0x.jpg');

-- ARTISTAS
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES
('Akira Kurosawa', 'Akira Kurosawa (黒澤 明) was a Japanese filmmaker and painter who directed thirty films in a career spanning over five decades. He is widely regarded as one of the greatest and most influential filmmakers in the history of cinema.', '1910-03-23'),
('Anthony Hopkins', 'Sir Philip Anthony Hopkins CBE (born December 31, 1937) is a Welsh actor, film director, and film producer.', '1937-12-31'),
('Eddie Murphy', 'Edward "Eddie" Regan Murphy (born April 3, 1961) is an American actor, voice actor, film director, producer, comedian, and singer.', '1961-04-03'),
('Fernanda Torres', 'Fernanda Pinheiro Torres (Rio de Janeiro, September 15, 1965), is a Brazilian actress, writer, columnist and screenwriter.', '1965-09-15'),
('Florence Pugh', 'Florence Pugh (/pjuː/ PEW; born 3 January 1996) is an English actress.', '1996-01-03'),
('Greta Gerwig', 'Greta Gerwig is an American actress, playwright, screenwriter, and director based in NY.', '1983-08-04'),
('Harrison Ford', 'Legendary Hollywood Icon Harrison Ford was born on July 13, 1942 in Chicago, Illinois.', '1942-07-13'),
('Idris Elba', 'Idris Elba (born September 6, 1972) is a British television, theatre, and film actor who has starred in both British and American productions.', '1972-09-06' ),
('John Williams', 'John Towner Williams (born February 8, 1932) is an American composer and conductor.', '1932-02-08'),
('Julia Roberts', 'Julia Fiona Roberts (born October 28, 1967) is an American actress. ', '1967-10-28'),
('Kleber Mendonça Filho', 'Kleber Mendonça Filho (born 1968) is a film director, screenwriter, producer, and critic, born in Recife, Pernambuco, Brazil.', '1968-11-22'),
('Lázaro Ramos', 'Luís Lázaro Sacramento Ramos (born November 1, 1978) is a Brazilian actor, presenter, director, writer and voice actor.', '1978-10-01'),
('Leonardo DiCaprio', 'Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor and film producer.', '1974-11-11'),
('Natalie Portman', 'Natalie Portman (born Neta-Lee Hershlag, June 9, 1981) is an actress with dual American and Israeli citizenship.', '1981-06-09'),
('Robert DeNiro', 'Robert Anthony De Niro (born August 17, 1943) is an American actor and film producer.', '1943-08-17'),
('Stanley Kubrick', 'Stanley Kubrick (July 26, 1928 – March 7, 1999) was an American film director, writer, producer, and photographer who lived in England during most of the last four decades of his career.', '1928-07-26'),
('Viola Davis', 'Viola Davis (/vaɪˈoʊlə/ vy-OH-lə; born August 11, 1965) is an American actress and film producer.', '1965-08-11'),
('Wagner Moura', 'Wagner Maniçoba de Moura (born June 27, 1976) is a Brazilian actor, director and musician.', '1976-06-27'),
('Winona Ryder', 'Winona Laura Horowitz (born October 29, 1971), known professionally as Winona Ryder, is an American actress.', '1971-10-29'),
('Zendaya', 'Zendaya Maree Stoermer Coleman (born September 1, 1996) is an American actress and singer.', '1996-09-01');

INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES
(1, 'Japão'),
(2, 'País de Gales'),
(3, 'Estados Unidos da América'),
(4, 'Brasil'),
(5, 'Inglaterra'),
(6, 'Estados Unidos da América'),
(7, 'Estados Unidos da América'),
(8, 'Reino Unido'),
(9, 'Estados Unidos da América'),
(10, 'Estados Unidos da América'),
(11, 'Brasil'),
(12, 'Brasil'),
(13, 'Estados Unidos da América'),
(14, 'Estados Unidos da América'),
(14, 'Israel'),
(15, 'Estados Unidos da América'),
(16, 'Estados Unidos da América'),
(17, 'Estados Unidos da América'),
(18, 'Brasil'),
(19, 'Estados Unidos da América'),
(20, 'Estados Unidos da América');

-- USUARIOS
INSERT INTO Usuario (id, nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES
(1, 'Arthur Fernandes', 'afol', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(2, 'Arlindo', 'arlindo', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(3, 'Arthur Torres', 'atl', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(4, 'Rio', 'grtc', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(5, 'Ian', 'idhac', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(6, 'Ítalo', 'icbo', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(7, 'Jesper Ian', 'jisbra', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(8, 'João Teles', 'joaoteles', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(9, 'maia', 'maf5', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ela/Dela', 'Brasil', 'Recife'),
(10, 'Marcos Gabriel', 'marcosgabriel', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(11, 'Thiago', 'tam6', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(12, 'Victor', 'victor_ekko', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(13, 'UCI', 'uci', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(14, 'cherloque', 'cherloque', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(15, 'Bock & Rolandinho', 'pipocando', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(16, 'PeeWee', 'peewee', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(17, 'Isabela Boscov', 'isabela_boscov', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ela/Dela', 'Brasil', 'Recife'),
(18, 'CineMania', 'cinemania', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife'),
(19, 'Omelete', 'omeleteve', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ela/Dela', 'Brasil', 'Recife'),
(20, 'cinemarque', 'cinemarque', 'senha123', 'https://i.imgur.com/HQJKYW1.png', '', 'Ele/Dele', 'Brasil', 'Recife');

INSERT INTO Estudio (nome, id_obra) VALUES
('Metro-Goldwyn-Mayer', 1),
('Stanley Kubrick Productions', 1),
('Neon', 2),
('Paramount Pictures', 3),
('Studio Ghibli', 4),
('40 Acres & A Mule Filmworks', 5),
('Universal Pictures', 5),
('A24', 6),
('Universal Pictures', 7),
('Paramount Pictures', 8),
('Universal Pictures', 9),
('Barunson E&A', 10),
('Miramax', 11),
('Daiei Film', 12),
('StudioCanal', 13),
('Sony Pictures Television', 14),
('Cartoon Network Studios', 15),
('ABC Studios', 16),
('Shaft', 17),
('Casa de Cinema de Porto Alegre', 18),
('Les Grands Films Classiques', 19),
('Bitter Films', 20);

INSERT INTO Review (id_obra, id_usuario, instante_avaliacao, conteudo, nota, possui_spoiler) VALUES
(1, 7, TO_TIMESTAMP('2023-07-23 04:05:49','YYYY-MM-DD HH24:MI:SS'), 'revolucionário', 5, '0'),
(14, 1, TO_TIMESTAMP('2024-08-01 10:00:00','YYYY-MM-DD HH24:MI:SS'), '5 estrelas pelos memes', 5, '0'),
(7, 2, TO_TIMESTAMP('2023-06-10 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'peak', 4, '0'),
(8, 6, TO_TIMESTAMP('2021-11-05 15:30:00','YYYY-MM-DD HH24:MI:SS'), 'Me fizeram uma proposta que não pude recusar', 3, '0');


INSERT INTO Funcoes(id_obra, id_artista, funcao) VALUES
(1, 16, 'Diretor'),
(12, 1, 'Diretor'),
(3, 13, 'Ator'),
(3, 15, 'Ator'),
(7, 18, 'Ator');

-- Listas Personalizadas
INSERT INTO Lista_Personalizada (id_lista,descricao, visibilidade ,titulo) VALUES
(lista_seq.CURRVAL, 'Minhas obras japonesas favoritas' , 0, 'Obras Japonesas'),
(lista_seq.CURRVAL, 'Absolut Cinema' , 1, 'CINEMA'),
(lista_seq.CURRVAL, 0, 'Animacao'),
(lista_seq.CURRVAL, 'Quem nao viu veja!' , 1, 'Mistureba'),
(lista_seq.CURRVAL, 1, 'Oscars');

INSERT INTO Watchlist (id_lista) VALUES
(lista_seq.CURRVAL),
(lista_seq.CURRVAL),
(lista_seq.CURRVAL);

INSERT INTO Adicionou (id_lista, id_obra, id_usuario, data_adicao) VALUES 
--Lista Privada 1
(1, 4, 7, SYSTIMESTAMP),
(1, 12, 7, SYSTIMESTAMP),
(1, 17, 7, SYSTIMESTAMP),
--Lista Privada 2
(2, 4, 4, SYSTIMESTAMP),
(2, 7, 4, SYSTIMESTAMP),
(2, 8, 4, SYSTIMESTAMP),
(2, 10, 4, SYSTIMESTAMP),
(2, 11, 4, SYSTIMESTAMP),
--Lista Privada 3
(3, 4, 12, SYSTIMESTAMP),
(3, 7, 12, SYSTIMESTAMP),
(3, 15, 12, SYSTIMESTAMP),
(3, 17, 12, SYSTIMESTAMP),
--Lista Privada 4
(4, 1, 19, SYSTIMESTAMP),
(4, 4, 19, SYSTIMESTAMP),
(4, 6, 19, SYSTIMESTAMP),
(4, 9, 19, SYSTIMESTAMP),
--Lista Privada 5
(5, 2, 19, SYSTIMESTAMP),
(5, 6, 19, SYSTIMESTAMP),
(5, 8, 19, SYSTIMESTAMP),
(5, 9, 19, SYSTIMESTAMP),
(5, 10, 19, SYSTIMESTAMP),
--Watchlist 1
(6, 20, 2, SYSTIMESTAMP),
--Watchlist 2
(7, 1, 11, SYSTIMESTAMP),
(7, 8, 11, SYSTIMESTAMP),
(7, 9, 11, SYSTIMESTAMP),
--Watchlist 3
(8, 1, 15, SYSTIMESTAMP),
(8, 8, 15, SYSTIMESTAMP),
(8, 9, 15, SYSTIMESTAMP);

INSERT INTO Segue (id_seguidor, id_seguido) VALUES
(3, 7),  -- atl segue jisbra
(5, 7),  -- idhac segue jisbra
(2, 1),  -- arlindo segue afol
(4, 2),  -- grtc segue arlindo
(8, 4),  -- joaoteles segue grtc
(9, 4),  -- maf5 segue grtc
(10, 9), -- marcosgabriel segue maf5
(15, 11);-- pipocando segue tam6

INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES
(2, 12, '2022-04-12 14:29:58', '1'),
(17, 2, '2024-12-02 14:02:23', '0'),
(4, 9, '26-08-2003 14:23:02', '1'),
(4, 9, '26-08-2003 16:28:07', '1'),
(4, 9, '26-08-2003 18:33:16', '1'),
(3, 7, '2023-07-23 04:05:49', '0'),
(17, 16, '2022-01-29 15:01:53', '1'),
(9, 13, '2024-06-06 14:22:14', '0'),
(9, 10, '2020-05-30 02:52:39', '1'),
(4, 10, '2023-05-27 12:50:34', '0' );

INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES
(1, 14), (3, 1), (3, 4), (5, 5), 
(5, 6), (5, 14), (5, 15),(6, 2), 
(6, 4), (7, 14), (8, 2), (8, 4), 
(8, 5), (9, 3), (9, 4), (9, 5), 
(9, 11), (9, 12), (10, 2), (11, 6), 
(11, 7), (11, 8), (12, 8), (13, 5), 
(13, 6), (13, 7), (13, 8), (14, 5), 
(14, 6), (14, 19), (15, 18), (15, 19),
(16, 20), (17, 14), (17, 5), (19, 11), 
(19, 12), (20, 20), (20, 6), (20, 1);

INSERT INTO Curtiu_Lista(id_usuario, id_obra) VALUES
(1, 2), (2,2), (3, 2), (3, 4),
(5, 2), (5, 5), (6, 2), (6, 4),
(7, 2), (7,4), (8, 2), (8, 4),
(8, 5), (9, 4), (9, 5), (9, 1),
(10, 2), (11, 2), (11, 4), (11, 5),
(12, 4), (13, 2), (13, 4), (13, 5),
(14, 2), (14, 4), (14, 15), (15, 3), 
(15, 4), (16, 4), (17, 2), (17, 5), 
(19, 2), (19, 4), (20, 4), (20, 5);

INSERT INTO Curtiu_Review (id_usuario_curtidor, id_usuario_autor, id_obra, instante_review) VALUES
(3, 7, 1, TO_TIMESTAMP('2023-07-23 04:05:49','YYYY-MM-DD HH24:MI:SS')),
(5, 1, 14, TO_TIMESTAMP('2024-08-01 10:00:00','YYYY-MM-DD HH24:MI:SS')),
(8, 2, 7, TO_TIMESTAMP('2023-06-10 12:00:00','YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Participou (id_obra, id_artista) VALUES
(1, 16), (12, 1), (3, 13), (3, 15), (7, 18),
(9, 17), (8, 2), (4, 5), (5, 12), (6, 19),
(10, 3), (11, 14), (12, 6), (13, 4), (14, 8),
(15, 1), (16, 9), (17, 20), (18, 11), (19, 10),
(20, 7), (1, 5), (2, 10), (3, 2), (4, 16),
(5, 17), (6, 9), (7, 15), (8, 14), (9, 3),
(10, 6), (11, 12), (12, 8), (13, 11), (14, 18),
(15, 20), (16, 4), (17, 13), (18, 19), (19, 2),
(20, 5), (1, 3), (2, 9), (3, 12), (4, 8),
(5, 6), (6, 10), (7, 4), (8, 15), (9, 18),
(10, 1), (11, 7), (12, 14), (13, 5), (14, 2),
(15, 16), (16, 11), (17, 6), (18, 9), (19, 20),
(20, 13), (1, 7), (2, 4), (3, 10), (4, 9);
