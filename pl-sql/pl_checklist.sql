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

-- Função para calcular a nota média de uma obra lendo todas as suas reviews
-- comandos usados CREATE OR REPLACE FUNCTION, PARAMETRO IN, CURSOR
CREATE OR REPLACE FUNCTION calcular_nota_media (
    id_obra_in IN NUMBER
) RETURN NUMBER

IS 
total NUMBER := 0;
counter NUMBER := 0;
average NUMBER := 0;
v_nota Review.nota%TYPE;

CURSOR c_review IS 
        SELECT nota
        FROM Review
        WHERE id_obra = id_obra_in;


BEGIN
    OPEN c_review;

    LOOP 
        FETCH c_review INTO v_nota
        EXIT WHEN c_review%NOTFOUND;

        total := total + v_nota;
        counter := counter + 1;
    END LOOP;

    CLOSE c_review;

    IF counter = 0 THEN
        RETURN 0;
    END IF;
    
    average := ROUND(total/counter, 2);

    RETURN average;

END;
/
