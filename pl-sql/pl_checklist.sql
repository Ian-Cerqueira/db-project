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

-- Uso de Tables e loop While para iterar manualmente e printar as regiões do mundo associadas a idiomas de obras
DECLARE
    TYPE idi_table IS TABLE OF Idiomas%ROWTYPE;
    regiao VARCHAR2(100);
    idiomas_table idi_table;
    counter NUMBER := 1;
    total_idiomas NUMBER;

BEGIN
    SELECT * BULK COLLECT INTO idiomas_table FROM Idiomas;
    total_idiomas := idiomas_table.COUNT;
    DBMS_OUTPUT.PUT_LINE('Quais regiões e países poderão assistir');
    DBMS_OUTPUT.PUT_LINE('=======================================================================');
    WHILE counter <= idiomas_table.COUNT LOOP
        regiao := NULL;
        CASE
            WHEN idiomas_table(counter).idioma = 'Inglês' THEN
                regiao := 'Todos os continentes vão assistir '
            WHEN idiomas_table(counter).idioma = 'Russo' THEN
                regiao := 'Mais algúem fala russo algúem da Rússia? Bom, vão gostar de '
            WHEN idiomas_table(counter).idioma = 'Japonês' THEN
                regiao := 'A terra do sol nascente poderá assistir '
            WHEN idiomas_table(counter).idioma = 'Português' THEN
                regiao := 'Lusófonos, podemos assistir '
            ELSE
                regiao := 'O idioma (' || idiomas_table(counter).idioma || ') está disponível para '
        END CASE;

        DBMS_OUTPUT.PUT_LINE(regiao || idiomas_table(counter).id_obra);
        counter := counter + 1;
    END LOOP;
END;

END;
/

-- 
CREATE OR REPLACE FUNCTION calcular_quantidade_de_curtidas (
    id_template IN NUMBER
) RETURN NUMBER
IS 
    quantidade_total NUMBER := 0;
BEGIN
    SELECT NVL(COUNT(DISTINCT id_usuario), 0) as Usuarios_distintos
    INTO quantidade_total
    FROM Curtiu_Obra co
    WHERE co.id_obra = id_template

    RETURN quantidade_total;

EXCEPTION
    WHEN OTHERS THEN RETURN -1;

END calcular_quantidade_de_curtidas;
/

DECLARE
    qtd_curtidas NUMBER;
BEGIN
    FOR obra IN (SELECT o.nome as titulo, o.id as ide FROM Obra o) LOOP
        qtd_curtidas := calcular_quantidade_de_curtidas(obra.ide);

        IF qtd_curtidas > 5 THEN
            DBMS_OUTPUT.PUT_LINE(obra.titulo || 'Obra bastante popular! Mais de 5 pessoas curtiram!');
        ELSIF qtd_curtidas > 2 THEN
            DBMS_OUTPUT.PUT_LINE(obra.titulo || 'Obra meio ninchada... so quem e cult conhece');
        ELSIF qtd_curtidas >= 0 THEN
            DBMS_OUTPUT.PUT_LINE(obra.titulo || 'Obra que ninguem se importa');
        ELSE
            DBMS_OUTPUT.PUT_LINE(obra.titulo || 'ERRO NO CALCULO');
        END IF;

    END LOOP;

END;
/
