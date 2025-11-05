DECLARE
    TYPE TopReviewObra IS RECORD(
        obra_nome Obra.nome%TYPE,
        obra_data Obra.dataLancamento%TYPE,
        obra_tipo Obra.tipo%TYPE,
        obra_origem Obra.paisDeOrigem%TYPE
    );
    ObraMaisReview TopReviewObra;
BEGIN
    SELECT o.nome, o.dataLancamento, o.tipo, o.paisDeOrigem
    INTO ObraMaisReview
    FROM Obra o
    WHERE o.id = 2;


-- Comandos utilizados: TYPE TABLE, ROWTYPE, FOR IN LOOP
-- Objetivo: Criar uma coleção pra armazenar usuários e listar os usuários com a nacionalidade brasileira.

DECLARE
    TYPE t_usuarios IS TABLE OF Usuario%ROWTYPE;
    lista_usuarios t_usuarios;

BEGIN
    SELECT *
    BULK COLLECT INTO lista_usuarios
    FROM Usuario
    WHERE pais = 'Brasil';

    FOR i IN 1 .. lista_usuarios.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(
            lista_usuarios(i).nome || ' - ' ||
            lista_usuarios(i).login
        );
    END LOOP;
END;