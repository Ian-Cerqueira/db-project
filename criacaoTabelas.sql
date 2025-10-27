/* Talvez adicionar mais checks e definir a situação do assistiu/log-compartilhado */

DROP TABLE Obra CASCADE CONSTRAINTS;
DROP TABLE Estudio CASCADE CONSTRAINTS;
DROP TABLE Idiomas CASCADE CONSTRAINTS;
DROP TABLE Genero CASCADE CONSTRAINTS;
DROP TABLE Posters CASCADE CONSTRAINTS;
DROP TABLE Tags CASCADE CONSTRAINTS;
DROP TABLE Nacionalidades CASCADE CONSTRAINTS;
DROP TABLE Usuario CASCADE CONSTRAINTS;
DROP TABLE Artistas CASCADE CONSTRAINTS;
DROP TABLE Lista CASCADE CONSTRAINTS;
DROP TABLE Watchlist CASCADE CONSTRAINTS;
DROP TABLE Lista_Personalizada CASCADE CONSTRAINTS;
DROP TABLE Review CASCADE CONSTRAINTS;
DROP TABLE Entrada_do_Log CASCADE CONSTRAINTS;
DROP TABLE Participou CASCADE CONSTRAINTS;
DROP TABLE Funcoes CASCADE CONSTRAINTS;
DROP TABLE Segue CASCADE CONSTRAINTS;
DROP TABLE Assistiu CASCADE CONSTRAINTS;
DROP TABLE Adicionou CASCADE CONSTRAINTS;
DROP TABLE Curtiu_Obra CASCADE CONSTRAINTS;
DROP TABLE Curtiu_Lista CASCADE CONSTRAINTS;
DROP TABLE Curtiu_Review CASCADE CONSTRAINTS;
DROP TABLE Log_Compartilhado CASCADE CONSTRAINTS;

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
    poster VARCHAR2(500),

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

CREATE TABLE Usuario (
    id NUMBER,
    nome VARCHAR2(200) NOT NULL,
    login VARCHAR2(25) NOT NULL,
    senha VARCHAR2(50) NOT NULL,
    iconeDePerfil VARCHAR2(1000) NOT NULL,
    bio VARCHAR2(300) NOT NULL, /* SEM BIO = STRING VAZIA */
    pronome VARCHAR2(20),
    pais VARCHAR2(50),
    cidade VARCHAR2(100),

    CONSTRAINT Usario_pkey PRIMARY KEY(id)

);

CREATE TABLE Artistas (
    id NUMBER,
    nome VARCHAR2(100) NOT NULL,
    bio VARCHAR2(500) NOT NULL,
    data_nascimento DATE NOT NULL,

    CONSTRAINT Artista_pkey PRIMARY KEY(id)

);

CREATE TABLE Nacionalidades (
    id_artista NUMBER,
    nacionalidade VARCHAR2(50),

    CONSTRAINT Nacionalidades_pkey PRIMARY KEY(id_artista, nacionalidade),
    CONSTRAINT Nacionalidades_fkey FOREIGN KEY(id_artista)
        REFERENCES Artistas(id)

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
        REFERENCES Lista(id),
    CONSTRAINT Lista_Personalizada_ck_visibilidade CHECK(visibilidade IN ('1', '0'))

);

CREATE TABLE Review (
    id_obra NUMBER,
    id_usuario NUMBER,
    instante_avalicao TIMESTAMP,
    conteudo VARCHAR2(1000) NOT NULL,
    nota NUMBER NOT NULL,
    possui_spoiler CHAR(1) DEFAULT '0' /* 1 -> possui spoiler, 0 -> não possui spoiler */

    CONSTRAINT Review_ck_nota CHECK (nota BETWEEN 1 AND 5 OR nota IS NULL),
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

CREATE TABLE Funcoes (
    id_obra NUMBER,
    id_artista NUMBER,
    funcao VARCHAR2(80),

    CONSTRAINT Funcoes_pkey PRIMARY KEY(id_obra, id_artista, funcao),
    CONSTRAINT Funcoes_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Funcoes_fkey_Artista FOREIGN KEY(id_artista)
        REFERENCES Artistas(id)

);

CREATE TABLE Segue (
    id_seguidor NUMBER,
    id_seguido NUMBER, 

    CONSTRAINT Segue_ck_NoSelfFollow CHECK(id_seguidor <> id_seguido),
    CONSTRAINT Segue_pkey PRIMARY KEY(id_seguidor, id_seguido),
    CONSTRAINT Segue_fkey FOREIGN KEY(id_seguidor)
        REFERENCES Usuario(id),
    CONSTRAINT Segue_fkey FOREIGN KEY(id_seguido)
        REFERENCES Usuario(id)

);

CREATE TABLE Assistiu (
    id_obra NUMBER,
    id_usuario NUMBER,
    data_assistida DATE NOT NULL,
    reassistindo CHAR(1) DEFAULT '0', /* 1 -> reassistindo, 0 -> não reassistindo */

    CONSTRAINT Assistiu_pkey PRIMARY KEY(id_obra, id_usuario),
    CONSTRAINT Assistiu_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Assistiu_fkey_Usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuario(id),
    CONSTRAINT Assistiu_ck_reassistindo CHECK(reassistindo IN ('1', '0'))

); 

CREATE TABLE Adicionou (
    id_lista NUMBER,
    id_obra NUMBER,
    id_usuario NUMBER,
    data_adicao TIMESTAMP NOT NULL,

    CONSTRAINT Adicionou_pkey PRIMARY KEY(id_lista, id_obra, id_usuario),
    CONSTRAINT Adicionou_fkey_Lista FOREIGN KEY(id_lista)
        REFERENCES Lista(id),
    CONSTRAINT Adicionou_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Adicionou_fkey_Usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuario(id)
    
);

CREATE TABLE Curtiu_Obra (
    id_usuario NUMBER,
    id_obra NUMBER,

    CONSTRAINT Curtiu_Obra_pkey PRIMARY KEY(id_usuario, id_obra),
    CONSTRAINT Curtiu_Obra_fkey_Usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuario(id),
    CONSTRAINT Curtiu_Obra_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id)

);

CREATE TABLE Curtiu_Lista (
    id_usuario NUMBER,
    id_lista NUMBER,

    CONSTRAINT Curtiu_Lista_pkey PRIMARY KEY(id_usuario, id_lista),
    CONSTRAINT Curtiu_Lista_fkey_Usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuario(id),
    CONSTRAINT Curtiu_Lista_fkey_Lista FOREIGN KEY(id_lista)
        REFERENCES Lista(id)
);

CREATE TABLE Curtiu_Review (
    id_usuario_curtidor NUMBER,
    id_usuario_autor NUMBER,
    id_obra NUMBER,
    instante_review NUMBER,

    CONSTRAINT Curtiu_Review_pkey PRIMARY KEY(id_usuario_curtidor, id_usuario_autor, id_obra, instante_review),
    CONSTRAINT Curtiu_Review_fkey_curtidor FOREIGN KEY(id_usuario_curtidor)
        REFERENCES Usuario(id),
    CONSTRAINT Curtiu_Review_fkey_autor FOREIGN KEY(id_usuario_autor)
        REFERENCES Usuario(id),
    CONSTRAINT Curtiu_Review_fkey_Obra FOREIGN KEY(id_obra)
        REFERENCES Obra(id),
    CONSTRAINT Curtiu_Review_fkey_instantereview FOREIGN KEY(instante_review)
        REFERENCES Review(instante_avalicao)

);

CREATE TABLE Log_compartilhado (
    id_obra NUMBER,
    id_usuario_log NUMBER,
    id_usuario_compartilhador NUMBER,
    instante_log TIMESTAMP,
    
    CONSTRAINT Log_compartilhado_pkey PRIMARY KEY(id_obra, id_usuario_log, id_usuario_compartilhador, instante_log),
    CONSTRAINT Log_compartilhado_fkey_compartilhador FOREIGN KEY(id_usuario_compartilhador)
        REFERENCES Usuario(id),
    CONSTRAINT Log_compartilhado_fkey_instantelog FOREIGN KEY(id_obra, id_usuario_log, instante_log)
        REFERENCES Entrada_do_log(id_obra, id_usuario, instante_log)

);
