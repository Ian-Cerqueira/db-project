CREATE TABLE Obra (
    id NUMBER,
    nome VARCHAR2(200) NOT NULL,
    tipo VARCHAR2(100) NOT NULL, /* CHECK "longa" or "curta" */
    dataLancamento DATE, /* data válida -> 1300 -> NAO */
    sinopse CLOB NOT NULL,
    paisDeOrigem VARCHAR2(100) NOT NULL,
    duracao NUMBER NOT NULL,

    CONSTRAINT Obra_pkey PRIMARY KEY(id),
    CONSTRAINT Obra_ck_tipo CHECK(tipo IN ("Longa-Metragem", "Curta-Metragem", "Seriado", "Média-Metragem"))

);

CREATE TABLE Estudio (
    nome VARCHAR2(300) NOT NULL,
    id NUMBER,

    CONSTRAINT Estudio_pkey PRIMARY KEY(nome, id),
    CONSTRAINT Estudio_fkey FOREIGN KEY(id)
        REFERENCES Obra(id)

);

CREATE TABLE Usuario (
    idUsuario NUMBER
    nome VARCHAR2(200) NOT NULL,
    login VARCHAR2(25) NOT NULL,
    senha VARCHAR2(50) NOT NULL,
    iconeDePerfil BLOB NOT NULL,
    bio VARCHAR2(300) NOT NULL, /* SEM BIO = STRING VAZIA */
    pronome VARCHAR2(20),
    pais VARCHAR2(50),
    cidade VARCHAR2(100),

    CONSTRAINT Usario_pkey PRIMARY KEY(idUsuario),
    
);