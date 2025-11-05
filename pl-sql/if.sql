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

END calcular_quantidade_de_curtidas
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
