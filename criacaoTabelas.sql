CREATE TABLE Obra (
    id NUMBER,
    nome VARCHAR2(200) NOT NULL,
    tipo VARCHAR2(100) NOT NULL, /* CHECK 'longa' or 'curta' */
    dataLancamento DATE, /* data válida -> 1300 -> NAO */
    sinopse VARCHAR2(1500) DEFAULT 'Sem sinopse.',
    paisDeOrigem VARCHAR2(100) NOT NULL,
    duracao NUMBER NOT NULL,

    CONSTRAINT Obra_pkey PRIMARY KEY(id),
    CONSTRAINT Obra_ck_tipo CHECK(tipo IN ('Longa-Metragem', 'Curta-Metragem', 'Seriado', 'Média-Metragem'))

);

CREATE TABLE Estudio (
    nome VARCHAR2(300),
    id_obra NUMBER,

    CONSTRAINT Estudio_pkey PRIMARY KEY(nome, id_obra),
    CONSTRAINT Estudio_fkey FOREIGN KEY(id_obra)
        REFERENCES Obra(id)

);

CREATE TABLE Idiomas (
    id_obra NUMBER,
    idioma VARCHAR2(50),

    CONSTRAINT Idiomas_pkey PRIMARY KEY(id_obra, idioma),
    CONSTRAINT Idiomas_fkey FOREIGN KEY(id_obra)
        REFERENCES Obra(id)
);

CREATE TABLE Genero (
    id_obra NUMBER,
    genero VARCHAR2(50),

    CONSTRAINT Genero_pkey PRIMARY KEY(id_obra, genero),
    CONSTRAINT Genero_fkey FOREIGN KEY(id_obra)
        REFERENCES Obra(id)

);

CREATE TABLE Posters (
    id_obra NUMBER,
    poster BLOB,

    CONSTRAINT Posters_pkey PRIMARY KEY(id_obra, poster),
    CONSTRAINT Posters_fkey FOREIGN KEY(id_obra)
        REFERENCES Obra(id)

);

CREATE TABLE Tags (
    id_obra NUMBER,
    tag VARCHAR2(50),

    CONSTRAINT Tags_pkey PRIMARY KEY(id_obra, tag),
    CONSTRAINT Tags_fkey FOREIGN KEY(id_obra)
        REFERENCES Obra(id)

);

CREATE TABLE Nacionalidades (
    id_obra NUMBER,
    nacionalidade VARCHAR2(50),

    CONSTRAINT Nacionalidades_pkey PRIMARY KEY(id_obra, nacionalidade),
    CONSTRAINT Nacionalidades_fkey FOREIGN KEY(id_obra)
        REFERENCES Obra(id)

);

CREATE TABLE Usuario (
    id NUMBER,
    nome VARCHAR2(200) NOT NULL,
    login VARCHAR2(25) NOT NULL,
    senha VARCHAR2(50) NOT NULL,
    iconeDePerfil BLOB NOT NULL,
    bio VARCHAR2(300) NOT NULL, /* SEM BIO = STRING VAZIA */
    pronome VARCHAR2(20),
    pais VARCHAR2(50),
    cidade VARCHAR2(100),

    CONSTRAINT Usario_pkey PRIMARY KEY(id)

);

CREATE TABLE Artistas (
    id NUMBER,
    nome VARCHAR2(100) NOT NULL,
    bio CLOB NOT NULL,
    data_nascimento DATE NOT NULL,

    CONSTRAINT Artista_pkey PRIMARY KEY(id)

);

CREATE TABLE Lista (
    id NUMBER,

    CONSTRAINT Lista_pkey PRIMARY KEY(id)
);

CREATE TABLE Watchlist (
    id_lista NUMBER,

    CONSTRAINT Watchlist_pkey PRIMARY KEY(id_lista),
    CONSTRAINT Watchlist_fkey FOREIGN KEY(id_lista)
        REFERENCES Lista(id)
);

CREATE TABLE Lista_Personalizada (
    id_lista NUMBER, 
    descricao VARCHAR2(500) DEFAULT 'Sem descrição.',
    visibilidade CHAR(1) DEFAULT '1', /* 1 -> público, 0 -> não público */
    titulo VARCHAR2(200) NOT NULL,

    CONSTRAINT Lista_Personalizada_pkey PRIMARY KEY(id_lista),
    CONSTRAINT Lista_Personalizada_fkey FOREIGN KEY(id_lista)
        REFERENCES Lista(id)
);

CREATE TABLE Review (
    id_obra NUMBER,
    id_usuario NUMBER,
    instante_avalicao TIMESTAMP,
    conteudo VARCHAR2(1000) NOT NULL,
    nota NUMBER NOT NULL,
    possui_spoiler CHAR(1) DEFAULT '0' /* 1 -> possui spoiler, 0 -> não possui spoiler */

    CONSTRAINT Review_ck_nota CHECK(nota BETWEEN 0 AND 5),
    CONSTRAINT Review_ck_spoiler CHECK(possui_spoiler in ('1', '0')),
    CONSTRAINT Review_pkey PRIMARY KEY(id_obra, id_usuario, instante_avalicao),
    CONSTRAINT Review_fkey_obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Review_fkey_usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuario(id)

);

CREATE TABLE Entrada_do_log (
    id_obra NUMBER,
    id_usuario NUMBER,
    instante_log TIMESTAMP,

    CONSTRAINT Entrada_do_log_pkey PRIMARY KEY(id_obra, id_usuario, instante_log),
    CONSTRAINT Entrada_do_log_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Entrada_do_log_fkey_Usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuario(id)

);

CREATE TABLE Participou (
    id_obra NUMBER,
    id_artista NUMBER,

    CONSTRAINT Participou_pkey PRIMARY KEY(id_obra, id_artista),
    CONSTRAINT Participou_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Participou_fkey_Artista FOREIGN KEY(id_artista)
        REFERENCES Artistas(id)

);
