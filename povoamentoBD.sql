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

INSERT INTO Idiomas (ID_Obra, Idioma) VALUES
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

INSERT INTO Genero (ID_Obra, Genero) VALUES
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

INSERT INTO Usuario (Login, Senha, Nome, Bio, Pronome, Localizacao, Icone_de_perfil) VALUES
('afol', 'senha123', 'Arthur Fernandes', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('arlindo', 'senha123', 'Arlindo', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('atl', 'senha123', 'Arthur Torres', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('grtc', 'senha123', 'Rio', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('idhec', 'senha123', 'Ian', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('icbo', 'senha123', 'Ítalo', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('jisbra', 'senha123', 'Jesper Ian', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('joaoteles', 'senha123', 'João Teles', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('maf5', 'senha123', 'maia', '', 'Ela/Dela', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('marcosgabriel', 'senha123', 'Marcos Gabriel', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('tam6', 'senha123', 'Thiago', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('victor_ekko', 'senha123', 'Victor', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('uci', 'senha123', 'UCI', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('cherloque', 'senha123', 'cherloque', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('pipocando', 'senha123', 'Bock & Rolandinho', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('peewee', 'senha123', 'PeeWee', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('isabela_boscov', 'senha123', 'Isabela Boscov', '', 'Ela/Dela', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('cinemania', 'senha123', 'CineMania', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('omeleteve', 'senha123', 'Omelete', '', 'Ela/Dela', 'Brasil', 'https://i.imgur.com/HQJKYW1.png'),
('cinemarque', 'senha123', 'cinemarque', '', 'Ele/Dele', 'Brasil', 'https://i.imgur.com/HQJKYW1.png');

INSERT INTO Estudio (ID_Obra, Nome_do_estudio) VALUES
(1, 'Metro-Goldwyn-Mayer'),
(1, 'Stanley Kubrick Productions'),
(2, 'Neon'),
(3, 'Paramount Pictures'),
(4, 'Studio Ghibli'),
(5, '40 Acres & A Mule Filmworks'),
(5, 'Universal Pictures'),
(6, 'A24'),
(7, 'Universal Pictures'),
(8, 'Paramount Pictures'),
(9, 'Universal Pictures'),
(10, 'Barunson E&A'),
(11, 'Miramax'),
(12, 'Daiei Film'),
(13, 'StudioCanal'),
(14, 'Sony Pictures Television'),
(15, 'Cartoon Network Studios'),
(16, 'ABC Studios'),
(17, 'Shaft'),
(18, 'Casa de Cinema de Porto Alegre'),
(19, 'Les Grands Films Classiques'),
(20, 'Bitter Films');