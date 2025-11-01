-- LIMPEZA
DELETE FROM Obra;
DELETE FROM Estudio;
DELETE FROM Idiomas;
DELETE FROM Genero;
DELETE FROM Posters;
DELETE FROM Tags;
DELETE FROM Nacionalidades;
DELETE FROM Usuario;
DELETE FROM Artistas;
DELETE FROM Lista;
DELETE FROM Watchlist;
DELETE FROM Lista_Personalizada;
DELETE FROM Review;
DELETE FROM Entrada_do_Log;
DELETE FROM Participou;
DELETE FROM Funcoes;
DELETE FROM Segue;
DELETE FROM Assistiu;
DELETE FROM Adicionou_Lista_Personalizada;
DELETE FROM Adicionou_Watchlist;
DELETE FROM Curtiu_Obra;
DELETE FROM Curtiu_Lista_Personalizada;
DELETE FROM Curtiu_Watchlist;
DELETE FROM Curtiu_Review;
DELETE FROM Log_Compartilhado;

-- LONGA-METRAGEM
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('2001: Uma Odisseia no Espaço', 'Longa-Metragem', TO_DATE('1968-04-02', 'YYYY-MM-DD'), 'Equipe espacial descobre mistério durante viagem a Júpiter.', 'Reino Unido', 149);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Anora', 'Longa-Metragem', TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'Stripper russa no Brooklyn vive romance inesperado com herdeiro de oligarca.', 'EUA', 110);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Assassinos da Lua das Flores', 'Longa-Metragem', TO_DATE('2023-10-19', 'YYYY-MM-DD'), 'Crimes em tribo Osage na década de 1920.', 'EUA', 206);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('A Viagem de Chihiro', 'Longa-Metragem', TO_DATE('2001-07-20', 'YYYY-MM-DD'), 'Menina entra em mundo mágico para salvar pais.', 'Japão', 125);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Faça a Coisa Certa', 'Longa-Metragem', TO_DATE('1989-06-30', 'YYYY-MM-DD'), 'Tensões raciais em dia quente no Brooklyn.', 'EUA', 120);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Moonlight: Sob a Luz do Luar', 'Longa-Metragem', TO_DATE('2016-10-21', 'YYYY-MM-DD'), 'Jovem enfrenta desafios em Miami.', 'EUA', 111);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('O Gato das Botas: O Último Desejo', 'Longa-Metragem', TO_DATE('2022-12-21', 'YYYY-MM-DD'), 'Gato busca desejo para recuperar suas nove vidas.', 'EUA', 102);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('O Poderoso Chefão', 'Longa-Metragem', TO_DATE('1972-03-24', 'YYYY-MM-DD'), 'Saga da família mafiosa Corleone.', 'EUA', 175);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Oppenheimer', 'Longa-Metragem', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 'Criador da bomba atômica lida com dilemas.', 'EUA', 180);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Parasita', 'Longa-Metragem', TO_DATE('2019-05-30', 'YYYY-MM-DD'), 'Família se infiltra em casa de ricos.', 'Coreia do Sul', 132);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Pulp Fiction: Tempo de Violência', 'Longa-Metragem', TO_DATE('1994-09-10', 'YYYY-MM-DD'), 'Histórias interligadas do submundo de LA.', 'EUA', 154);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Rashomon', 'Longa-Metragem', TO_DATE('1950-08-25', 'YYYY-MM-DD'), 'Crime contado sob diferentes perspectivas.', 'Japão', 88);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Senna: O Brasileiro, O Herói, O Campeão', 'Longa-Metragem', TO_DATE('2010-10-07', 'YYYY-MM-DD'), 'Documentário sobre Ayrton Senna.', 'Reino Unido', 106);


-- SERIADO
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Breaking Bad - A Química do Mal', 'Seriado', TO_DATE('2008-01-20', 'YYYY-MM-DD'), 'Professor faz metanfetamina após diagnóstico de câncer.', 'EUA', 2953);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('O Segredo Além do Jardim', 'Seriado', TO_DATE('2014-11-03', 'YYYY-MM-DD'), 'Dois irmãos em aventura surreal.', 'EUA', 109);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Lost', 'Seriado', TO_DATE('2004-09-22', 'YYYY-MM-DD'), 'Sobreviventes de acidente lutam em ilha.', 'EUA', 5460);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Puella Magi Madoka Magica', 'Seriado', TO_DATE('2011-01-07', 'YYYY-MM-DD'), 'Garotas recebem poderes mágicos.', 'Japão', 300);

-- CURTA-METRAGEM
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Ilha das Flores', 'Curta-Metragem', TO_DATE('1989-03-11', 'YYYY-MM-DD'), 'Curta de sátira sobre desigualdade.', 'Brasil', 13);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('Um Cão Andaluz', 'Curta-Metragem', TO_DATE('1929-06-06', 'YYYY-MM-DD'), 'Surrealismo com imagens impactantes.', 'França/Espanha', 16);
INSERT INTO Obra (nome, tipo, dataLancamento, sinopse, paisDeOrigem, duracao) VALUES ('World of Tomorrow', 'Curta-Metragem', TO_DATE('2015-01-22', 'YYYY-MM-DD'), 'Viagem de garota ao futuro distante.', 'EUA', 17);


INSERT INTO Idiomas (id_Obra, idioma) VALUES (1, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (1, 'Russo');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (1, 'Francês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (2, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (2, 'Russo');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (3, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (4, 'Japonês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (5, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (6, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (7, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (8, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (9, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (10, 'Coreano');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (11, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (12, 'Japonês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (13, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (13, 'Português');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (14, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (15, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (16, 'Inglês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (17, 'Japonês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (18, 'Português');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (19, 'Francês');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (19, 'Espanhol');
INSERT INTO Idiomas (id_Obra, idioma) VALUES (20, 'Inglês');


INSERT INTO Genero (id_Obra, genero) VALUES (1, 'Ficção Científica');
INSERT INTO Genero (id_Obra, genero) VALUES (1, 'Aventura');
INSERT INTO Genero (id_Obra, genero) VALUES (2, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (2, 'Comédia');
INSERT INTO Genero (id_Obra, genero) VALUES (3, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (3, 'Suspense');
INSERT INTO Genero (id_Obra, genero) VALUES (3, 'Crime');
INSERT INTO Genero (id_Obra, genero) VALUES (4, 'Animação');
INSERT INTO Genero (id_Obra, genero) VALUES (4, 'Aventura');
INSERT INTO Genero (id_Obra, genero) VALUES (4, 'Fantasia');
INSERT INTO Genero (id_Obra, genero) VALUES (5, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (5, 'Comédia');
INSERT INTO Genero (id_Obra, genero) VALUES (6, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (7, 'Animação');
INSERT INTO Genero (id_Obra, genero) VALUES (7, 'Aventura');
INSERT INTO Genero (id_Obra, genero) VALUES (7, 'Comédia');
INSERT INTO Genero (id_Obra, genero) VALUES (8, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (8, 'Crime');
INSERT INTO Genero (id_Obra, genero) VALUES (9, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (9, 'Biografia');
INSERT INTO Genero (id_Obra, genero) VALUES (9, 'Histórico');
INSERT INTO Genero (id_Obra, genero) VALUES (10, 'Suspense');
INSERT INTO Genero (id_Obra, genero) VALUES (10, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (10, 'Comédia');
INSERT INTO Genero (id_Obra, genero) VALUES (11, 'Crime');
INSERT INTO Genero (id_Obra, genero) VALUES (11, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (12, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (12, 'Mistério');
INSERT INTO Genero (id_Obra, genero) VALUES (12, 'Crime');
INSERT INTO Genero (id_Obra, genero) VALUES (13, 'Documentário');
INSERT INTO Genero (id_Obra, genero) VALUES (13, 'Esporte');
INSERT INTO Genero (id_Obra, genero) VALUES (13, 'Biografia');
INSERT INTO Genero (id_Obra, genero) VALUES (14, 'Crime');
INSERT INTO Genero (id_Obra, genero) VALUES (14, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (14, 'Suspense');
INSERT INTO Genero (id_Obra, genero) VALUES (15, 'Animação');
INSERT INTO Genero (id_Obra, genero) VALUES (15, 'Aventura');
INSERT INTO Genero (id_Obra, genero) VALUES (15, 'Fantasia');
INSERT INTO Genero (id_Obra, genero) VALUES (16, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (16, 'Mistério');
INSERT INTO Genero (id_Obra, genero) VALUES (16, 'Aventura');
INSERT INTO Genero (id_Obra, genero) VALUES (17, 'Animação');
INSERT INTO Genero (id_Obra, genero) VALUES (17, 'Fantasia');
INSERT INTO Genero (id_Obra, genero) VALUES (17, 'Drama');
INSERT INTO Genero (id_Obra, genero) VALUES (18, 'Documentário');
INSERT INTO Genero (id_Obra, genero) VALUES (19, 'Surrealismo');
INSERT INTO Genero (id_Obra, genero) VALUES (20, 'Animação');
INSERT INTO Genero (id_Obra, genero) VALUES (20, 'Ficção Científica');


-- POSTERS
INSERT INTO Posters (id_obra, poster) VALUES (1, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ve72VxNqjGM69Uky4WTo2bK6rfq.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (1, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zmmYdPa8Lxx999Af9vnVP4XQ1V6.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (1, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nRsTL3djLDBcnMNoBugqobFe7ii.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (2, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/davwb31ZFhBUrZuRlxk8meRfATI.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (3, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dB6Krk806zeqd0YNp2ngQ9zXteH.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (4, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (5, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/63rmSDPahrH7C1gEFYzRuIBAN9W.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (6, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rcICfiL9fvwRjoWHxW8QeroLYrJ.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (7, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (8, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3bhkrj58Vtu7enYsRolD1fZdja1.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (9, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (10, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (11, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vQWk5YBFWF4bZaofAbv0tShwBvQ.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (12, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vL7Xw04nFMHwnvXRFCmYYAzMUvY.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (13, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nZbLCbRoP6iJq5sr8daHQzjnzFh.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (14, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ztkUQFLlC19CCMYHW9o1zWhJRNq.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (15, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/m3lU8n7WxzMecxKZcqhq5y5ESy.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (16, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/og6S0aTZU6YUJAbqxeKjCa3kY1E.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (17, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9Leopb4OB9j9FkP5JNHRZZlPPdg.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (18, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cghvWnWK5AuIKPY92YRV9tCeNhw.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (19, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/obvE7ElAvCUhKtWFwDSvNbPw9PV.jpg');
INSERT INTO Posters (id_obra, poster) VALUES (20, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5s7DSOek7Bk2CvcG1zX01bJzJ0x.jpg');


-- ARTISTAS
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Akira Kurosawa', 'Akira Kurosawa (黒澤 明) was a Japanese filmmaker and painter who directed thirty films in a career spanning over five decades. He is widely regarded as one of the greatest and most influential filmmakers in the history of cinema.', TO_DATE('1910-03-23', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Anthony Hopkins', 'Sir Philip Anthony Hopkins CBE (born December 31, 1937) is a Welsh actor, film director, and film producer.', TO_DATE('1937-12-31', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Eddie Murphy', 'Edward "Eddie" Regan Murphy (born April 3, 1961) is an American actor, voice actor, film director, producer, comedian, and singer.', TO_DATE('1961-04-03', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Fernanda Torres', 'Fernanda Pinheiro Torres (Rio de Janeiro, September 15, 1965), is a Brazilian actress, writer, columnist and screenwriter.', TO_DATE('1965-09-15', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Florence Pugh', 'Florence Pugh (/pjuː/ PEW; born 3 January 1996) is an English actress.', TO_DATE('1996-01-03', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Greta Gerwig', 'Greta Gerwig is an American actress, playwright, screenwriter, and director based in NY.', TO_DATE('1983-08-04', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Harrison Ford', 'Legendary Hollywood Icon Harrison Ford was born on July 13, 1942 in Chicago, Illinois.', TO_DATE('1942-07-13', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Idris Elba', 'Idris Elba (born September 6, 1972) is a British television, theatre, and film actor who has starred in both British and American productions.', TO_DATE('1972-09-06', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('John Williams', 'John Towner Williams (born February 8, 1932) is an American composer and conductor.', TO_DATE('1932-02-08', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Julia Roberts', 'Julia Fiona Roberts (born October 28, 1967) is an American actress. ', TO_DATE('1967-10-28', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Kleber Mendonça Filho', 'Kleber Mendonça Filho (born 1968) is a film director, screenwriter, producer, and critic, born in Recife, Pernambuco, Brazil.', TO_DATE('1968-11-22', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Lázaro Ramos', 'Luís Lázaro Sacramento Ramos (born November 1, 1978) is a Brazilian actor, presenter, director, writer and voice actor.', TO_DATE('1978-10-01', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Leonardo DiCaprio', 'Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor and film producer.', TO_DATE('1974-11-11', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Natalie Portman', 'Natalie Portman (born Neta-Lee Hershlag, June 9, 1981) is an actress with dual American and Israeli citizenship.', TO_DATE('1981-06-09', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Robert DeNiro', 'Robert Anthony De Niro (born August 17, 1943) is an American actor and film producer.', TO_DATE('1943-08-17', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Stanley Kubrick', 'Stanley Kubrick (July 26, 1928 – March 7, 1999) was an American film director, writer, producer, and photographer who lived in England during most of the last four decades of his career.', TO_DATE('1928-07-26', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Viola Davis', 'Viola Davis (/vaɪˈoʊlə/ vy-OH-lə; born August 11, 1965) is an American actress and film producer.', TO_DATE('1965-08-11', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Wagner Moura', 'Wagner Maniçoba de Moura (born June 27, 1976) is a Brazilian actor, director and musician.', TO_DATE('1976-06-27', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Winona Ryder', 'Winona Laura Horowitz (born October 29, 1971), known professionally as Winona Ryder, is an American actress.', TO_DATE('1971-10-29', 'YYYY-MM-DD'));
INSERT INTO Artistas(nome, bio, data_nascimento) VALUES ('Zendaya', 'Zendaya Maree Stoermer Coleman (born September 1, 1996) is an American actress and singer.', TO_DATE('1996-09-01', 'YYYY-MM-DD'));


INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (1, 'Japão');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (2, 'País de Gales');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (3, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (4, 'Brasil');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (5, 'Inglaterra');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (6, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (7, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (8, 'Reino Unido');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (9, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (10, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (11, 'Brasil');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (12, 'Brasil');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (13, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (14, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (14, 'Israel');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (15, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (16, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (17, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (18, 'Brasil');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (19, 'Estados Unidos da América');
INSERT INTO Nacionalidades(id_artista, nacionalidade) VALUES (20, 'Estados Unidos da América');


-- USUARIOS
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Arthur Fernandes', 'afol', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Arlindo', 'arlindo', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Arthur Torres', 'atl', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Rio', 'grtc', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Ian', 'idhac', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Ítalo', 'icbo', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Jesper Ian', 'jisbra', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('João Teles', 'joaoteles', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('maia', 'maf5', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ela/Dela', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Marcos Gabriel', 'marcosgabriel', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Thiago', 'tam6', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Victor', 'victor_ekko', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('UCI', 'uci', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('cherloque', 'cherloque', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('BockRolandinho', 'pipocando', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('PeeWee', 'peewee', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Isabela Boscov', 'isabela_boscov', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ela/Dela', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('CineMania', 'cinemania', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('Omelete', 'omeleteve', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ela/Dela', 'Brasil', 'Recife');
INSERT INTO Usuario (nome, login, senha, iconeDePerfil, bio, pronome, pais, cidade) VALUES ('cinemarque', 'cinemarque', 'senha123', 'https://i.imgur.com/HQJKYW1.png', 'No bio', 'Ele/Dele', 'Brasil', 'Recife');



INSERT INTO Estudio (nome, id_obra) VALUES ('Metro-Goldwyn-Mayer', 1);
INSERT INTO Estudio (nome, id_obra) VALUES ('Stanley Kubrick Productions', 1);
INSERT INTO Estudio (nome, id_obra) VALUES ('Neon', 2);
INSERT INTO Estudio (nome, id_obra) VALUES ('Paramount Pictures', 3);
INSERT INTO Estudio (nome, id_obra) VALUES ('Studio Ghibli', 4);
INSERT INTO Estudio (nome, id_obra) VALUES ('40 Acres A Mule Filmworks', 5);
INSERT INTO Estudio (nome, id_obra) VALUES ('Universal Pictures', 5);
INSERT INTO Estudio (nome, id_obra) VALUES ('A24', 6);
INSERT INTO Estudio (nome, id_obra) VALUES ('Universal Pictures', 7);
INSERT INTO Estudio (nome, id_obra) VALUES ('Paramount Pictures', 8);
INSERT INTO Estudio (nome, id_obra) VALUES ('Universal Pictures', 9);
INSERT INTO Estudio (nome, id_obra) VALUES ('Barunson EA', 10);
INSERT INTO Estudio (nome, id_obra) VALUES ('Miramax', 11);
INSERT INTO Estudio (nome, id_obra) VALUES ('Daiei Film', 12);
INSERT INTO Estudio (nome, id_obra) VALUES ('StudioCanal', 13);
INSERT INTO Estudio (nome, id_obra) VALUES ('Sony Pictures Television', 14);
INSERT INTO Estudio (nome, id_obra) VALUES ('Cartoon Network Studios', 15);
INSERT INTO Estudio (nome, id_obra) VALUES ('ABC Studios', 16);
INSERT INTO Estudio (nome, id_obra) VALUES ('Shaft', 17);
INSERT INTO Estudio (nome, id_obra) VALUES ('Casa de Cinema de Porto Alegre', 18);
INSERT INTO Estudio (nome, id_obra) VALUES ('Les Grands Films Classiques', 19);
INSERT INTO Estudio (nome, id_obra) VALUES ('Bitter Films', 20);



INSERT INTO Review (id_obra, id_usuario, instante_avaliacao, conteudo, nota, possui_spoiler) VALUES (1, 7, TO_TIMESTAMP('2023-07-23 04:05:49','YYYY-MM-DD HH24:MI:SS'), 'revolucionário', 5, '0');
INSERT INTO Review (id_obra, id_usuario, instante_avaliacao, conteudo, nota, possui_spoiler) VALUES (14, 1, TO_TIMESTAMP('2024-08-01 10:00:00','YYYY-MM-DD HH24:MI:SS'), '5 estrelas pelos memes', 5, '0');
INSERT INTO Review (id_obra, id_usuario, instante_avaliacao, conteudo, nota, possui_spoiler) VALUES (7, 2, TO_TIMESTAMP('2023-06-10 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'peak', 4, '0');
INSERT INTO Review (id_obra, id_usuario, instante_avaliacao, conteudo, nota, possui_spoiler) VALUES (8, 6, TO_TIMESTAMP('2021-11-05 15:30:00','YYYY-MM-DD HH24:MI:SS'), 'Me fizeram uma proposta que não pude recusar', 3, '0');



INSERT INTO Funcoes(id_obra, id_artista, funcao) VALUES (1, 16, 'Diretor');
INSERT INTO Funcoes(id_obra, id_artista, funcao) VALUES (12, 1, 'Diretor');
INSERT INTO Funcoes(id_obra, id_artista, funcao) VALUES (3, 13, 'Ator');
INSERT INTO Funcoes(id_obra, id_artista, funcao) VALUES (3, 15, 'Ator');
INSERT INTO Funcoes(id_obra, id_artista, funcao) VALUES (7, 18, 'Ator');


-- Listas Personalizadas
INSERT INTO Lista_Personalizada (descricao, visibilidade, titulo) VALUES ('Minhas obras japonesas favoritas', '0', 'Obras Japonesas');
INSERT INTO Lista_Personalizada (descricao, visibilidade, titulo) VALUES ('Absolut Cinema', '1', 'CINEMA');
INSERT INTO Lista_Personalizada (descricao, visibilidade, titulo) VALUES ('Quem nao viu veja!', '1', 'Mistureba');

INSERT INTO Lista_Personalizada (visibilidade, titulo) VALUES ('1', 'Oscars');
INSERT INTO Lista_Personalizada (visibilidade, titulo) VALUES ('0', 'Animacao');

-- Watchlists
INSERT INTO Watchlist (id) VALUES (lista_watch_seq.CURRVAL);
INSERT INTO Watchlist (id) VALUES (lista_watch_seq.CURRVAL);
INSERT INTO Watchlist (id) VALUES (lista_watch_seq.CURRVAL);


-- Lista Privada 1
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (1, 4, 7, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (1, 12, 7, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (1, 17, 7, SYSTIMESTAMP);

-- Lista Privada 2
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 4, 4, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 7, 4, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 8, 4, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 10, 4, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 11, 4, SYSTIMESTAMP);

-- Lista Privada 3
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 4, 12, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 7, 12, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 15, 12, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 17, 12, SYSTIMESTAMP);

-- Lista Privada 4
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (4, 1, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (4, 4, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (4, 6, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (4, 9, 19, SYSTIMESTAMP);

-- Lista Privada 5
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (5, 2, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (5, 6, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (5, 8, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (5, 9, 19, SYSTIMESTAMP);
INSERT INTO Adicionou_Lista_Personalizada (id_lista, id_obra, id_usuario, data_adicao) VALUES (5, 10, 19, SYSTIMESTAMP);


-- Watchlist 1
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (1, 20, 2, SYSTIMESTAMP);

-- Watchlist 2
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 1, 11, SYSTIMESTAMP);
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 8, 11, SYSTIMESTAMP);
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (2, 9, 11, SYSTIMESTAMP);

-- Watchlist 3
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 1, 15, SYSTIMESTAMP);
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 8, 15, SYSTIMESTAMP);
INSERT INTO Adicionou_Watchlist(id_lista, id_obra, id_usuario, data_adicao) VALUES (3, 9, 15, SYSTIMESTAMP);


INSERT INTO Segue (id_seguidor, id_seguido) VALUES (3, 7);  -- atl segue jisbra
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (5, 7);  -- idhac segue jisbra
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (2, 1);  -- arlindo segue afol
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (4, 2);  -- grtc segue arlindo
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (8, 4);  -- joaoteles segue grtc
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (9, 4);  -- maf5 segue grtc
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (10, 9); -- marcosgabriel segue maf5
INSERT INTO Segue (id_seguidor, id_seguido) VALUES (15, 11); -- pipocando segue tam6


INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (2, 12, '2022-04-12 14:29:58', '1');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (17, 2, '2024-12-02 14:02:23', '0');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (4, 9, '2003-08-26 14:23:02', '1');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (4, 9, '2003-08-26 16:28:07', '1');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (4, 9, '2003-08-26 18:33:16', '1');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (3, 7, '2023-07-23 04:05:49', '0');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (17, 16, '2022-01-29 15:01:53', '1');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (9, 13, '2024-06-06 14:22:14', '0');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (9, 10, '2020-05-30 02:52:39', '1');
INSERT INTO Entrada_do_log (id_obra, id_usuario, instante_log, reassistindo) VALUES (4, 10, '2023-05-27 12:50:34', '0');


INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (1, 14);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (3, 1);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (3, 4);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (5, 5);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (5, 6);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (5, 14);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (5, 15);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (6, 2);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (6, 4);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (7, 14);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (8, 2);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (8, 4);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (8, 5);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (9, 3);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (9, 4);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (9, 5);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (9, 11);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (9, 12);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (10, 2);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (11, 6);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (11, 7);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (11, 8);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (12, 8);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (13, 5);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (13, 6);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (13, 7);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (13, 8);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (14, 5);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (14, 6);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (14, 19);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (15, 18);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (15, 19);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (16, 20);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (17, 14);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (17, 5);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (19, 11);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (19, 12);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (20, 20);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (20, 6);
INSERT INTO Curtiu_Obra(id_usuario, id_obra) VALUES (20, 1);

INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (1, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (2, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (3, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (3, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (5, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (5, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (6, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (6, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (7, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (7, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (8, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (8, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (8, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (9, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (9, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (9, 1);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (10, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (11, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (11, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (11, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (12, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (13, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (13, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (13, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (14, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (14, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (14, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (15, 3);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (15, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (16, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (17, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (17, 5);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (19, 2);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (19, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (20, 4);
INSERT INTO Curtiu_Lista_Personalizada(id_usuario, id_lista) VALUES (20, 5);


INSERT INTO Curtiu_Review (id_usuario_curtidor, id_usuario_autor, id_obra, instante_review) VALUES (3, 7, 1, TO_TIMESTAMP('2023-07-23 04:05:49','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Curtiu_Review (id_usuario_curtidor, id_usuario_autor, id_obra, instante_review) VALUES (5, 1, 14, TO_TIMESTAMP('2024-08-01 10:00:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Curtiu_Review (id_usuario_curtidor, id_usuario_autor, id_obra, instante_review) VALUES (8, 2, 7, TO_TIMESTAMP('2023-06-10 12:00:00','YYYY-MM-DD HH24:MI:SS'));


INSERT INTO Participou (id_obra, id_artista) VALUES (1, 16);
INSERT INTO Participou (id_obra, id_artista) VALUES (12, 1);
INSERT INTO Participou (id_obra, id_artista) VALUES (3, 13);
INSERT INTO Participou (id_obra, id_artista) VALUES (3, 15);
INSERT INTO Participou (id_obra, id_artista) VALUES (7, 18);
INSERT INTO Participou (id_obra, id_artista) VALUES (9, 17);
INSERT INTO Participou (id_obra, id_artista) VALUES (8, 2);
INSERT INTO Participou (id_obra, id_artista) VALUES (4, 5);
INSERT INTO Participou (id_obra, id_artista) VALUES (5, 12);
INSERT INTO Participou (id_obra, id_artista) VALUES (6, 19);
INSERT INTO Participou (id_obra, id_artista) VALUES (10, 3);
INSERT INTO Participou (id_obra, id_artista) VALUES (11, 14);
INSERT INTO Participou (id_obra, id_artista) VALUES (12, 6);
INSERT INTO Participou (id_obra, id_artista) VALUES (13, 4);
INSERT INTO Participou (id_obra, id_artista) VALUES (14, 8);
INSERT INTO Participou (id_obra, id_artista) VALUES (15, 1);
INSERT INTO Participou (id_obra, id_artista) VALUES (16, 9);
INSERT INTO Participou (id_obra, id_artista) VALUES (17, 20);
INSERT INTO Participou (id_obra, id_artista) VALUES (18, 11);
INSERT INTO Participou (id_obra, id_artista) VALUES (19, 10);
INSERT INTO Participou (id_obra, id_artista) VALUES (20, 7);
INSERT INTO Participou (id_obra, id_artista) VALUES (1, 5);
INSERT INTO Participou (id_obra, id_artista) VALUES (2, 10);
INSERT INTO Participou (id_obra, id_artista) VALUES (3, 2);
INSERT INTO Participou (id_obra, id_artista) VALUES (4, 16);
INSERT INTO Participou (id_obra, id_artista) VALUES (5, 17);
INSERT INTO Participou (id_obra, id_artista) VALUES (6, 9);
INSERT INTO Participou (id_obra, id_artista) VALUES (7, 15);
INSERT INTO Participou (id_obra, id_artista) VALUES (8, 14);
INSERT INTO Participou (id_obra, id_artista) VALUES (9, 3);
INSERT INTO Participou (id_obra, id_artista) VALUES (10, 6);
INSERT INTO Participou (id_obra, id_artista) VALUES (11, 12);
INSERT INTO Participou (id_obra, id_artista) VALUES (12, 8);
INSERT INTO Participou (id_obra, id_artista) VALUES (13, 11);
INSERT INTO Participou (id_obra, id_artista) VALUES (14, 18);
INSERT INTO Participou (id_obra, id_artista) VALUES (15, 20);
INSERT INTO Participou (id_obra, id_artista) VALUES (16, 4);
INSERT INTO Participou (id_obra, id_artista) VALUES (17, 13);
INSERT INTO Participou (id_obra, id_artista) VALUES (18, 19);
INSERT INTO Participou (id_obra, id_artista) VALUES (19, 2);
INSERT INTO Participou (id_obra, id_artista) VALUES (20, 5);
INSERT INTO Participou (id_obra, id_artista) VALUES (1, 3);
INSERT INTO Participou (id_obra, id_artista) VALUES (2, 9);
INSERT INTO Participou (id_obra, id_artista) VALUES (3, 12);
INSERT INTO Participou (id_obra, id_artista) VALUES (4, 8);
INSERT INTO Participou (id_obra, id_artista) VALUES (5, 6);
INSERT INTO Participou (id_obra, id_artista) VALUES (6, 10);
INSERT INTO Participou (id_obra, id_artista) VALUES (7, 4);
INSERT INTO Participou (id_obra, id_artista) VALUES (8, 15);
INSERT INTO Participou (id_obra, id_artista) VALUES (9, 18);
INSERT INTO Participou (id_obra, id_artista) VALUES (10, 1);
INSERT INTO Participou (id_obra, id_artista) VALUES (11, 7);
INSERT INTO Participou (id_obra, id_artista) VALUES (12, 14);
INSERT INTO Participou (id_obra, id_artista) VALUES (13, 5);
INSERT INTO Participou (id_obra, id_artista) VALUES (14, 2);
INSERT INTO Participou (id_obra, id_artista) VALUES (15, 16);
INSERT INTO Participou (id_obra, id_artista) VALUES (16, 11);
INSERT INTO Participou (id_obra, id_artista) VALUES (17, 6);
INSERT INTO Participou (id_obra, id_artista) VALUES (18, 9);
INSERT INTO Participou (id_obra, id_artista) VALUES (19, 20);
INSERT INTO Participou (id_obra, id_artista) VALUES (20, 13);
INSERT INTO Participou (id_obra, id_artista) VALUES (1, 7);
INSERT INTO Participou (id_obra, id_artista) VALUES (2, 4);
INSERT INTO Participou (id_obra, id_artista) VALUES (3, 10);
INSERT INTO Participou (id_obra, id_artista) VALUES (4, 9);


INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (2, 12, 10, '2022-04-12 14:29:58');
INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (4, 9, 1, '2003-08-26 16:28:07');
INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (4, 9, 9, '2003-08-26 18:33:16');
INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (3, 7, 18, '2023-07-23 04:05:49');
INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (9, 13, 10, '2024-06-06 14:22:14');
INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (9, 10, 7, '2020-05-30 02:52:39');
INSERT INTO Log_Compartilhado (id_obra, id_usuario_log, id_usuario_compartilhador, instante_log) VALUES (4, 10, 4, '2023-05-27 12:50:34');
